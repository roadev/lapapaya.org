class MicropostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_micropost, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:destroy, :edit, :update]

  def index
    @microposts = Micropost.all
  end

  def show
    @solution = Solution.new
  end
  
  def new
    @micropost = Micropost.new
  end

  def edit
  end

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

  def destroy
    @micropost.destroy
    flash[:success] = "¡ El reto ha sido Eliminado !"
    respond_to do |format|
      format.html { redirect_to microposts_url }
      format.json { head :no_content }
    end
  end

  private
  def set_micropost
    @micropost = Micropost.find(params[:id])
  end

  def micropost_params
    params[:micropost][:user_id] = current_user.id
    params.require(:micropost).permit(:content, :image, :user_id)
  end
  def correct_user
    @micropost = current_user.microposts.find_by(id: params[:id])
    flash[:danger] = "Este contenido sólo puede modificarlo o eliminarlo el propietario." if @micropost.nil?
    flash[:success] = "El reto ha sido Eliminado." if @micropost.present?
    redirect_to microposts_url if @micropost.nil?

  end
end
