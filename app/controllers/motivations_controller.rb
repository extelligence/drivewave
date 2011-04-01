class MotivationsController < ApplicationController
  # POST /motivations
  def create
    @motivation = Motivation.new(params[:motivation])
    @motivation.user_id = current_user.id
    @motivation.theme_id = session[:theme_id]
    #FIXME: ここのロジックはモデルでやるべき。
    if current_user.motivations.where(:theme_id => @motivation.theme_id).last
      @motivation.total = current_user.motivations.where(:theme_id => @motivation.theme_id).last.total + @motivation.energy
    else
      @motivation.total = @motivation.energy
    end
    session[:theme_id] = @motivation.theme_id

    respond_to do |format|
      if @motivation.save
        format.html { redirect_to(:back, :notice => 'Motivation was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # DELETE /motivations/1
  def destroy
    @motivation = Motivation.find(params[:id])
    @motivation.destroy

    respond_to do |format|
      format.html { redirect_to(:back) }
    end
  end
end
