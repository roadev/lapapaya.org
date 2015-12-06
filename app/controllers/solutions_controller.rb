class SolutionsController < ApplicationController
  before_action :set_solution, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :correct_user, only: [:destroy, :edit, :update]

  def index
    @solutions = Solution.all
  end

  def show
  end

  def new
    @solution = Solution.new
  end

  def edit
  end

  def create
    @solution = current_user.solutions.build(solution_params)
    @micropost = Micropost.find(params[:micropost_id])
    @solution.micropost = @micropost

    respond_to do |format|
      if @solution.save
        format.html { redirect_to @solution, notice: '¡ La solución ha sido enviada !' }
        format.json { render action: 'show', status: :created, location: @solution }
      else
        format.html { render action: 'new' }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @solution.update(solution_params)
        format.html { redirect_to @solution, notice: '¡ Has editado la solución !' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @solution.destroy
    respond_to do |format|
      format.html { redirect_to solutions_url }
      format.json { head :no_content }
    end
  end

  private
  def set_solution
    @solution = Solution.find(params[:id])
  end

  def solution_params
    params.require(:solution).permit(:micropost_id, :content, :image)
  end
  def correct_user
    @solution = current_user.solutions.find_by(id: params[:id])
    flash[:danger] = "Este contenido sólo puede modificarlo o eliminarlo el propietario." if @solution.nil?
    flash[:success] = "La solución ha sido Eliminada." if @solution.present?
    redirect_to microposts_url if @solution.nil?
  end
end
