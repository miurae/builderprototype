class TasklinksController < ApplicationController
  # GET /tasklinks
  # GET /tasklinks.json
  def index
    @tasklinks = Tasklink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasklinks }
    end
  end

  # GET /tasklinks/1
  # GET /tasklinks/1.json
  def show
    @tasklink = Tasklink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tasklink }
    end
  end

  # GET /tasklinks/new
  # GET /tasklinks/new.json
  def new
    @tasklink = Tasklink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tasklink }
    end
  end

  # GET /tasklinks/1/edit
  def edit
    @tasklink = Tasklink.find(params[:id])
  end

  # POST /tasklinks
  # POST /tasklinks.json
  def create
    @tasklink = Tasklink.new(params[:tasklink])

    respond_to do |format|
      if @tasklink.save
        format.html { redirect_to @tasklink, notice: 'Tasklink was successfully created.' }
        format.json { render json: @tasklink, status: :created, location: @tasklink }
      else
        format.html { render action: "new" }
        format.json { render json: @tasklink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tasklinks/1
  # PUT /tasklinks/1.json
  def update
    @tasklink = Tasklink.find(params[:id])

    respond_to do |format|
      if @tasklink.update_attributes(params[:tasklink])
        format.html { redirect_to @tasklink, notice: 'Tasklink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tasklink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasklinks/1
  # DELETE /tasklinks/1.json
  def destroy
    @tasklink = Tasklink.find(params[:id])
    @tasklink.destroy

    respond_to do |format|
      format.html { redirect_to tasklinks_url }
      format.json { head :no_content }
    end
  end
end
