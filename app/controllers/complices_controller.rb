class ComplicesController < ApplicationController
  before_action :set_complice, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /complices
  # GET /complices.json
  def index
    #@complices = Complice.all
    redirect_to root_path
  end

  # GET /complices/1
  # GET /complices/1.json
  def show
  end

  # GET /complices/new
  def new
    @complice = current_user.complices.build
  end

  # GET /complices/1/edit
  def edit
  end

  # POST /complices
  # POST /complices.json
  def create
    @complice = current_user.complices.build(complice_params)

    respond_to do |format|
      if @complice.save
        current_user.level = current_user.level + 1
        format.html { redirect_to @complice, notice: '¡Gracias por apoyar este sueño!' }
        format.json { render action: 'show', status: :created, location: @complice }
      else
        format.html { render action: 'new' }
        format.json { render json: @complice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complices/1
  # PATCH/PUT /complices/1.json
  def update
    respond_to do |format|
      if @complice.update(complice_params)
        format.html { redirect_to @complice, notice: 'Complice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @complice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complices/1
  # DELETE /complices/1.json
  def destroy
    @complice.destroy
    respond_to do |format|
      format.html { redirect_to complices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complice
      @complice = Complice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complice_params
      params.require(:complice).permit(:dream_id, :tags, :reason, :giving)
    end
end
