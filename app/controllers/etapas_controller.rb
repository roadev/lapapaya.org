class EtapasController < ApplicationController
  before_action :set_etapa, only: [:show, :edit, :update, :destroy]

  def index
    @etapas = Etapa.all
  end

  def show
  end

  def new
    @etapa = Etapa.new
  end

  def edit
  end

  def create
    @etapa = Etapa.new(etapa_params)

    respond_to do |format|
      if @etapa.save
        format.html { redirect_to "/dreams/#{last_dream.id}", notice: 'Etapa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @etapa }
      else
        format.html { render action: 'new' }
        format.json { render json: @etapa.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @etapa.update(etapa_params)
        format.html { redirect_to @etapa, notice: 'Etapa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @etapa.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @etapa.destroy
    respond_to do |format|
      format.html { redirect_to etapas_url }
      format.json { head :no_content }
    end
  end

  private
  def set_etapa
    @etapa = Etapa.find(params[:id])
  end

  def etapa_params
    params.require(:etapa).permit(:etapa1, :indicador1, :etapa2, :indicador2, :etapa3, :indicador3)
  end
end
