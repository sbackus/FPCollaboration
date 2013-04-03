class PagesController < ApplicationController

before_filter :load_scrapbook

  # GET /pages
  # GET /pages.json
  def index
    @pages = @scrapbook.pages.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = @scrapbook.pages.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

  # GET /pages/new
  # GET /pages/new.json
  def new
    @page = @scrapbook.pages.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page }
    end
  end

  # GET /pages/1/edit
  def edit
    @page = @scrapbook.pages.find(params[:id])
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = @scrapbook.pages.new(params[:page])

    respond_to do |format|
      if @page.save
        format.html { redirect_to [@scrapbook, @page], notice: 'Page was successfully created.' }
        format.json { render json: @page, status: :created, location: @page }
      else
        format.html { render action: "new" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.json
  def update
    @page = @scrapbook.pages.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to [@scrapbook, @page], notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page = @scrapbook.pages.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to scrapbook_pages_path(@scrapbook) }
      format.json { head :no_content }
    end
  end

  private

    def load_scrapbook
      @scrapbook = Scrapbook.find(params[:scrapbook_id])
    end

end
