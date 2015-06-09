class CanvasLadoDerechosController < ApplicationController
  before_action :set_canvas_lado_derecho, only: [:show, :edit, :update, :destroy]

  # GET /canvas_lado_derechos
  # GET /canvas_lado_derechos.json
  def index
    @canvas_lado_derechos = CanvasLadoDerecho.all
  end

  # GET /canvas_lado_derechos/1
  # GET /canvas_lado_derechos/1.json
  def show
  end

  # GET /canvas_lado_derechos/new
  def new
    @canvas_lado_derecho = CanvasLadoDerecho.new
  end

  # GET /canvas_lado_derechos/1/edit
  def edit
  end

  # POST /canvas_lado_derechos
  # POST /canvas_lado_derechos.json
  def create
    @canvas_lado_derecho = CanvasLadoDerecho.new(canvas_lado_derecho_params)

    respond_to do |format|
      if @canvas_lado_derecho.save
        format.html { redirect_to "/dreams/#{last_dream.id}", notice: 'Canvas lado derecho was successfully created.' }
        format.json { render action: 'show', status: :created, location: @canvas_lado_derecho }
      else
        format.html { render action: 'new' }
        format.json { render json: @canvas_lado_derecho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canvas_lado_derechos/1
  # PATCH/PUT /canvas_lado_derechos/1.json
  def update
    respond_to do |format|
      if @canvas_lado_derecho.update(canvas_lado_derecho_params)
        format.html { redirect_to @canvas_lado_derecho, notice: 'Canvas lado derecho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @canvas_lado_derecho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canvas_lado_derechos/1
  # DELETE /canvas_lado_derechos/1.json
  def destroy
    @canvas_lado_derecho.destroy
    respond_to do |format|
      format.html { redirect_to canvas_lado_derechos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canvas_lado_derecho
      @canvas_lado_derecho = CanvasLadoDerecho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canvas_lado_derecho_params
      params.require(:canvas_lado_derecho).permit(:propuesta_de_valor, :tratamiento_con_el_cliente, :canales, :segmento_cliente1, :segmento_cliente22, :segmento_cliente3, :stakeholder1, :stakeholder2, :stakeholder3, :indicador_clave)
    end
end
