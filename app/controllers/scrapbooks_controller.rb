class ScrapbooksController < ApplicationController
  # GET /scrapbooks
  # GET /scrapbooks.json
  def index
    @scrapbooks = Scrapbook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scrapbooks }
    end
  end

  # GET /scrapbooks/1
  # GET /scrapbooks/1.json
  def show
    @scrapbook = Scrapbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scrapbook }
    end
  end

  # GET /scrapbooks/new
  # GET /scrapbooks/new.json
  def new
    @scrapbook = Scrapbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scrapbook }
    end
  end

  # GET /scrapbooks/1/edit
  def edit
    @scrapbook = Scrapbook.find(params[:id])
  end

  # POST /scrapbooks
  # POST /scrapbooks.json
  def create
    @scrapbook = Scrapbook.new(params[:scrapbook])

    respond_to do |format|
      if @scrapbook.save
        format.html { redirect_to @scrapbook, notice: 'Scrapbook was successfully created.' }
        format.json { render json: @scrapbook, status: :created, location: @scrapbook }
      else
        format.html { render action: "new" }
        format.json { render json: @scrapbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scrapbooks/1
  # PUT /scrapbooks/1.json
  def update
    @scrapbook = Scrapbook.find(params[:id])

    respond_to do |format|
      if @scrapbook.update_attributes(params[:scrapbook])
        format.html { redirect_to @scrapbook, notice: 'Scrapbook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scrapbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scrapbooks/1
  # DELETE /scrapbooks/1.json
  def destroy
    @scrapbook = Scrapbook.find(params[:id])
    @scrapbook.destroy

    respond_to do |format|
      format.html { redirect_to scrapbooks_url }
      format.json { head :no_content }
    end
  end
end
