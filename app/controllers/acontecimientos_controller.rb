class AcontecimientosController < ApplicationController
  before_action :set_acontecimiento, only: [:show, :edit, :update, :destroy]

  # GET /acontecimientos
  # GET /acontecimientos.json
  def index
    @acontecimientos = Acontecimiento.all
  end

  # GET /acontecimientos/1
  # GET /acontecimientos/1.json
  def show
  end

  # GET /acontecimientos/new
  def new
    @acontecimiento = Acontecimiento.new
  end

  # GET /acontecimientos/1/edit
  def edit
  end

  # POST /acontecimientos
  # POST /acontecimientos.json
  def create
    @acontecimiento = Acontecimiento.new(acontecimiento_params)

    respond_to do |format|
      if @acontecimiento.save
        format.html { redirect_to @acontecimiento, notice: 'Acontecimiento was successfully created.' }
        format.json { render :show, status: :created, location: @acontecimiento }
      else
        format.html { render :new }
        format.json { render json: @acontecimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acontecimientos/1
  # PATCH/PUT /acontecimientos/1.json
  def update
    respond_to do |format|
      if @acontecimiento.update(acontecimiento_params)
        format.html { redirect_to @acontecimiento, notice: 'Acontecimiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @acontecimiento }
      else
        format.html { render :edit }
        format.json { render json: @acontecimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acontecimientos/1
  # DELETE /acontecimientos/1.json
  def destroy
    @acontecimiento.destroy
    respond_to do |format|
      format.html { redirect_to acontecimientos_url, notice: 'Acontecimiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acontecimiento
      @acontecimiento = Acontecimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acontecimiento_params
      params.require(:acontecimiento).permit(:periodo_acontecimiento, :titulo_acontecimiento, :descripcion_acontecimiento)
    end
end
