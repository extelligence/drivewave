class MotivationsController < ApplicationController
  # POST /motivations
  def create
    @motivation = Motivation.new(params[:motivation])

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
