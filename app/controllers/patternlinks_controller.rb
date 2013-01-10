class PatternlinksController < ApplicationController
  # GET /patternlinks
  # GET /patternlinks.json
  def index
    @patternlinks = Patternlink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patternlinks }
    end
  end

  # GET /patternlinks/1
  # GET /patternlinks/1.json
  def show
    @patternlink = Patternlink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patternlink }
    end
  end

  # GET /patternlinks/new
  # GET /patternlinks/new.json
  def new
    @patternlink = Patternlink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patternlink }
    end
  end

  # GET /patternlinks/1/edit
  def edit
    @patternlink = Patternlink.find(params[:id])
  end

  # POST /patternlinks
  # POST /patternlinks.json
  def create
    @patternlink = Patternlink.new(params[:patternlink])

    respond_to do |format|
      if @patternlink.save
        format.html { redirect_to @patternlink, notice: 'Patternlink was successfully created.' }
        format.json { render json: @patternlink, status: :created, location: @patternlink }
      else
        format.html { render action: "new" }
        format.json { render json: @patternlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patternlinks/1
  # PUT /patternlinks/1.json
  def update
    @patternlink = Patternlink.find(params[:id])

    respond_to do |format|
      if @patternlink.update_attributes(params[:patternlink])
        format.html { redirect_to @patternlink, notice: 'Patternlink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patternlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patternlinks/1
  # DELETE /patternlinks/1.json
  def destroy
    @patternlink = Patternlink.find(params[:id])
    @patternlink.destroy

    respond_to do |format|
      format.html { redirect_to patternlinks_url }
      format.json { head :no_content }
    end
  end
end
