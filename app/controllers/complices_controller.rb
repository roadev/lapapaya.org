class ComplicesController < ApplicationController
  before_action :set_complice, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    #@complices = Complice.all
    redirect_to root_path
  end

  def show
  end

  # GET /complices/new
  def new
    @complice = current_user.complices.build
  end

  def edit
  end

  def create
    @complice = current_user.complices.build(complice_params)

    respond_to do |format|
      if @complice.save
        format.html { redirect_to @complice, notice: '¡Gracias por apoyar este sueño!' }
        format.json { render action: 'show', status: :created, location: @complice }
      else
        format.html { render action: 'new' }
        format.json { render json: @complice.errors, status: :unprocessable_entity }
      end
    end
  end

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

  def destroy
    @complice.destroy
    respond_to do |format|
      format.html { redirect_to complices_url }
      format.json { head :no_content }
    end
  end

  private
    def set_complice
      @complice = Complice.find(params[:id])
    end

    def complice_params
      params.require(:complice).permit(:dream_id, :tags, :reason, :giving)
    end
end
