class DreamsController < ApplicationController
  before_action :set_dream, only: [:show, :edit, :update, :destroy]

  def index
    @dreams = Dream.all
  end

  def show
  end

  def new
    @dream = Dream.new
  end

  def edit
  end

  def create
    @dream = Dream.new(dream_params)

    respond_to do |format|
      if @dream.save
        format.html { redirect_to @dream, notice: 'Dream was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dream }
      else
        format.html { render action: 'new' }
        format.json { render json: @dream.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dream.update(dream_params)
        format.html { redirect_to @dream, notice: 'Dream was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dream.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dream.destroy
    respond_to do |format|
      format.html { redirect_to dreams_url }
      format.json { head :no_content }
    end
  end

  private
    def set_dream
      @dream = Dream.find(params[:id])
    end

    def dream_params
      params.require(:dream).permit(:dream, :whant, :offer, :need)
    end
end
