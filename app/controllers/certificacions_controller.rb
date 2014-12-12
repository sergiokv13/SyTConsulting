class CertificacionsController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_certificacion, only: [:show, :edit, :update, :destroy]

  # GET /certificacions
  # GET /certificacions.json
  def index
    @certificacions = Certificacion.all
  end

  # GET /certificacions/1
  # GET /certificacions/1.json
  def show
  end

  # GET /certificacions/new
  def new
    @certificacion = Certificacion.new
  end

  # GET /certificacions/1/edit
  def edit
  end

  # POST /certificacions
  # POST /certificacions.json
  def create
    @certificacion = Certificacion.new(certificacion_params)

    respond_to do |format|
      if @certificacion.save
        format.html { redirect_to @certificacion, notice: 'Certificacion was successfully created.' }
        format.json { render :show, status: :created, location: @certificacion }
      else
        format.html { render :new }
        format.json { render json: @certificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certificacions/1
  # PATCH/PUT /certificacions/1.json
  def update
    respond_to do |format|
      if @certificacion.update(certificacion_params)
        format.html { redirect_to @certificacion, notice: 'Certificacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @certificacion }
      else
        format.html { render :edit }
        format.json { render json: @certificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certificacions/1
  # DELETE /certificacions/1.json
  def destroy
    @certificacion.destroy
    respond_to do |format|
      format.html { redirect_to certificacions_url, notice: 'Certificacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificacion
      @certificacion = Certificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificacion_params
      params.require(:certificacion).permit(:titulo_certificacion, :descripcion_certificacion, :foto)
    end
end
