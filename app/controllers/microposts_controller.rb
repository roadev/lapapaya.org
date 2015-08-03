class MicropostsController < ApplicationController
  before_action :set_micropost, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :correct_user, only: [:destroy, :edit, :update]

  # GET /microposts
  # GET /microposts.json
  def index
    @microposts = Micropost.all
  end

  # GET /microposts/1
  # GET /microposts/1.json
  def show
  end

  # GET /microposts/new
  def new
    @micropost = Micropost.new
  end

  # GET /microposts/1/edit
  def edit
  end

  # POST /microposts
  # POST /microposts.json
  def create
    @micropost = Micropost.new(micropost_params)

    respond_to do |format|
      if @micropost.save
        format.html { redirect_to dreams_path, notice: '¡ Reto creado satisfactoriamente !' }
        format.json { render action: 'show', status: :created, location: @micropost }

      else
        format.html { render action: 'new' }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microposts/1
  # PATCH/PUT /microposts/1.json
  def update
    respond_to do |format|
      if @micropost.update(micropost_params)
        format.html { redirect_to @micropost, notice: 'Reto actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposts/1
  # DELETE /microposts/1.json
  def destroy
    @micropost.destroy
    flash[:success] = "¡ El reto ha sido Eliminado !"
    respond_to do |format|
      format.html { redirect_to microposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropost
      @micropost = Micropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropost_params
      params[:micropost][:user_id] = current_user.id
      params.require(:micropost).permit(:content, :image, :user_id)
    end
    # Confirms the correct user.
    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      #render text: ':(' if @micropost.nil?
      flash[:danger] = "Este contenido sólo puede modificarlo o eliminarlo el propietario." if @micropost.nil?
      flash[:success] = "El reto ha sido Eliminado." if @micropost.present?
      redirect_to microposts_url if @micropost.nil?

    end
end
