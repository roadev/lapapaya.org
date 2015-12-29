class CanvasController < ApplicationController
  before_action :set_canva, only: [:show, :edit, :update, :destroy]

  def index
    @canvas = Canva.all
  end

  def show
  end

  def new
    @canva = Canva.new
  end

  def edit
  end

  def create
    @canva = Canva.new(canva_params)

    respond_to do |format|
      if @canva.save
        format.html { redirect_to "/dreams/#{last_dream.id}", notice: 'Canva was successfully created.' }
        format.json { render action: 'show', status: :created, location: @canva }
      else
        format.html { render action: 'new' }
        format.json { render json: @canva.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @canva.update(canva_params)
        format.html { redirect_to @canva, notice: 'Canva was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @canva.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @canva.destroy
    respond_to do |format|
      format.html { redirect_to canvas_url }
      format.json { head :no_content }
    end
  end

  private
  def set_canva
    @canva = Canva.find(params[:id])
  end

  def canva_params
    params.require(:canva).permit(:cliente1, :canal1, :problema1, :cliente2, :canal2, :problema2, :cliente3, :canal3, :problema3)
  end
end
