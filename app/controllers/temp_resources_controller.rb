class TempResourcesController < ApplicationController
  before_action :set_temp_resource, only: [:show, :edit, :update, :destroy]

  # GET /temp_resources
  # GET /temp_resources.json
  def index
    @temp_resources = TempResource.all
  end

  # GET /temp_resources/1
  # GET /temp_resources/1.json
  def show
  end

  # GET /temp_resources/new
  def new
    @temp_resource = TempResource.new
  end

  # GET /temp_resources/1/edit
  def edit
  end

  # POST /temp_resources
  # POST /temp_resources.json
  def create
    @temp_resource = TempResource.new(temp_resource_params)

    respond_to do |format|
      if @temp_resource.save
        format.html { redirect_to @temp_resource, notice: 'Temp resource was successfully created.' }
        format.json { render :show, status: :created, location: @temp_resource }
      else
        format.html { render :new }
        format.json { render json: @temp_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp_resources/1
  # PATCH/PUT /temp_resources/1.json
  def update
    respond_to do |format|
      if @temp_resource.update(temp_resource_params)
        format.html { redirect_to @temp_resource, notice: 'Temp resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @temp_resource }
      else
        format.html { render :edit }
        format.json { render json: @temp_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp_resources/1
  # DELETE /temp_resources/1.json
  def destroy
    @temp_resource.destroy
    respond_to do |format|
      format.html { redirect_to temp_resources_url, notice: 'Temp resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp_resource
      @temp_resource = TempResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temp_resource_params
      params.fetch(:temp_resource, {})
    end
end
