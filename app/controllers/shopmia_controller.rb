class ShopmiaController < ApplicationController
  before_action :set_shopmium, only: [:show, :edit, :update, :destroy]

  # GET /shopmia
  # GET /shopmia.json
  def index
    @shopmia = Shopmium.where("name LIKE ?","%#{params[:search]}%").order(params[:sort]).all
    @ip = request.remote_ip

  end

  # GET /shopmia/1
  # GET /shopmia/1.json
  def show
  end

  # GET /shopmia/new
  def new
    @shopmium = Shopmium.new
  end

  # GET /shopmia/1/edit
  def edit
  end

  # POST /shopmia
  # POST /shopmia.json
  def create
    @shopmium = Shopmium.new(shopmium_params)

    respond_to do |format|
      if @shopmium.save
        format.html { redirect_to @shopmium, notice: 'Shopmium was successfully created.' }
        format.json { render :show, status: :created, location: @shopmium }
      else
        format.html { render :new }
        format.json { render json: @shopmium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopmia/1
  # PATCH/PUT /shopmia/1.json
  def update
    respond_to do |format|
      if @shopmium.update(shopmium_params)
        format.html { redirect_to @shopmium, notice: 'Shopmium was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopmium }
      else
        format.html { render :edit }
        format.json { render json: @shopmium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopmia/1
  # DELETE /shopmia/1.json
  def destroy

    @shopmium.destroy
    respond_to do |format|
      format.html { redirect_to shopmia_url, notice: 'Shopmium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def import
    Shopmium.import(params[:file])
    redirect_to shopmia_path, notice: 'Shop ajouté'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopmium
      @shopmium = Shopmium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopmium_params
      params.require(:shopmium).permit(:chain, :name, :latitude, :longitude, :address, :city, :zip, :department, :phone, :hours, :store_id, :is_address_computed, :is_location_computed, :key, :ignored, :ignore_reason, :overload_chain_name, :mandatory_coords, :country_code)
    end
end
