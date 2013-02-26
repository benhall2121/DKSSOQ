class SubconsultantsController < ApplicationController
  # GET /subconsultants
  # GET /subconsultants.json
  def index
    @subconsultants = Subconsultant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subconsultants }
    end
  end

  # GET /subconsultants/1
  # GET /subconsultants/1.json
  def show
    @subconsultant = Subconsultant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subconsultant }
    end
  end

  # GET /subconsultants/new
  # GET /subconsultants/new.json
  def new
    @subconsultant = Subconsultant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subconsultant }
    end
  end

  # GET /subconsultants/1/edit
  def edit
    @subconsultant = Subconsultant.find(params[:id])
  end

  # POST /subconsultants
  # POST /subconsultants.json
  def create
    @subconsultant = Subconsultant.new(params[:subconsultant])

    respond_to do |format|
      if @subconsultant.save
        format.html { redirect_to @subconsultant, notice: 'Subconsultant was successfully created.' }
        format.json { render json: @subconsultant, status: :created, location: @subconsultant }
      else
        format.html { render action: "new" }
        format.json { render json: @subconsultant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subconsultants/1
  # PUT /subconsultants/1.json
  def update
    @subconsultant = Subconsultant.find(params[:id])

    respond_to do |format|
      if @subconsultant.update_attributes(params[:subconsultant])
        format.html { redirect_to @subconsultant, notice: 'Subconsultant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subconsultant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subconsultants/1
  # DELETE /subconsultants/1.json
  def destroy
    @subconsultant = Subconsultant.find(params[:id])
    @subconsultant.destroy

    respond_to do |format|
      format.html { redirect_to subconsultants_url }
      format.json { head :no_content }
    end
  end
end
