class SolucionsController < ApplicationController
  before_action :set_solucion, only: [:show, :edit, :update, :destroy]

  # GET /solucions
  # GET /solucions.json
  def index
    @solucions = Solucion.all
  end

  # GET /solucions/1
  # GET /solucions/1.json
  def show
  end

  # GET /solucions/new
  def new
    @solucion = Solucion.new
  end

  # GET /solucions/1/edit
  def edit
  end

  # POST /solucions
  # POST /solucions.json
  def create
    @solucion = Solucion.new(solucion_params)

    respond_to do |format|
      if @solucion.save
        format.html { redirect_to @solucion, notice: 'Solucion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @solucion }
      else
        format.html { render action: 'new' }
        format.json { render json: @solucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solucions/1
  # PATCH/PUT /solucions/1.json
  def update
    respond_to do |format|
      if @solucion.update(solucion_params)
        format.html { redirect_to @solucion, notice: 'Solucion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @solucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solucions/1
  # DELETE /solucions/1.json
  def destroy
    @solucion.destroy
    respond_to do |format|
      format.html { redirect_to solucions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solucion
      @solucion = Solucion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solucion_params
      params.require(:solucion).permit(:micropost_id, :solucion, :solucion)
    end
end
