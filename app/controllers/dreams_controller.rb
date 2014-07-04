class DreamsController < ApplicationController
  before_action :set_dream, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @dreams = Dream.all
  end

  def show
  end

  def new
    @dream = current_user.dreams.build
  end

  def edit
  end

  def create
    @dream = current_user.dreams.build(dream_params)

      if @dream.save
        redirect_to @dream, notice: 'Dream was successfully created.' 
        
      else
      render action: 'new'
    
      end
    end

  def update
      if @dream.update(dream_params)
       redirect_to @dream, notice: 'Dream was successfully updated.' 
      
      else
        render action: 'edit' 
       
      end
    end

  def destroy
    @dream.destroy
  
   redirect_to dreams_url 
   
    end

  private
    def set_dream
      @dream = Dream.find(params[:id])
    end

  def correct_user
    @dream = current_user.dreams.find_by(id: params[:id])
    redirect_to dreams_path, notice: "Not authorized to edit this dream" if @dream.nil?
  end
    def dream_params
      params.require(:dream).permit(:dream, :image)
    end
def import
  Dream.import(params[:file])
  redirect_to root, notice: "Dreams imported."
end
end