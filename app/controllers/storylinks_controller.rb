class StorylinksController < ApplicationController
  # GET /storylinks
  # GET /storylinks.json
  def index
    @storylinks = Storylink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @storylinks }
    end
  end

  # GET /storylinks/1
  # GET /storylinks/1.json
  def show
    @storylink = Storylink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @storylink }
    end
  end

  # GET /storylinks/new
  # GET /storylinks/new.json
  def new
    @storylink = Storylink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @storylink }
    end
  end

  # GET /storylinks/1/edit
  def edit
    @storylink = Storylink.find(params[:id])
  end

  # POST /storylinks
  # POST /storylinks.json
  def create
    @storylink = Storylink.new(params[:storylink])

    respond_to do |format|
      if @storylink.save
        format.html { redirect_to @storylink, notice: 'Storylink was successfully created.' }
        format.json { render json: @storylink, status: :created, location: @storylink }
      else
        format.html { render action: "new" }
        format.json { render json: @storylink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /storylinks/1
  # PUT /storylinks/1.json
  def update
    @storylink = Storylink.find(params[:id])

    respond_to do |format|
      if @storylink.update_attributes(params[:storylink])
        format.html { redirect_to @storylink, notice: 'Storylink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @storylink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storylinks/1
  # DELETE /storylinks/1.json
  def destroy
    @storylink = Storylink.find(params[:id])
    @storylink.destroy

    respond_to do |format|
      format.html { redirect_to storylinks_url }
      format.json { head :no_content }
    end
  end
end
