class MotivationsController < ApplicationController
  # GET /motivations
  # GET /motivations.xml
  def index
    @motivations = Motivation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @motivations }
    end
  end

  # GET /motivations/1
  # GET /motivations/1.xml
  def show
    @motivation = Motivation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @motivation }
    end
  end

  # GET /motivations/new
  # GET /motivations/new.xml
  def new
    @motivation = Motivation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @motivation }
    end
  end

  # GET /motivations/1/edit
  def edit
    @motivation = Motivation.find(params[:id])
  end

  # POST /motivations
  # POST /motivations.xml
  def create
    @motivation = Motivation.new(params[:motivation])

    respond_to do |format|
      if @motivation.save
        format.html { redirect_to(@motivation, :notice => 'Motivation was successfully created.') }
        format.xml  { render :xml => @motivation, :status => :created, :location => @motivation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @motivation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /motivations/1
  # PUT /motivations/1.xml
  def update
    @motivation = Motivation.find(params[:id])

    respond_to do |format|
      if @motivation.update_attributes(params[:motivation])
        format.html { redirect_to(@motivation, :notice => 'Motivation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @motivation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /motivations/1
  # DELETE /motivations/1.xml
  def destroy
    @motivation = Motivation.find(params[:id])
    @motivation.destroy

    respond_to do |format|
      format.html { redirect_to(motivations_url) }
      format.xml  { head :ok }
    end
  end
end
