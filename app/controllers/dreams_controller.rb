class DreamsController < ApplicationController
  before_action :set_dream, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @dreams = Dream.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)
  end

  def show
  end

  def new
    @dream = current_user.dreams.build
  end

  def edit
  end

  def import
  	Dream.import(params[:file])
	  redirect_to root, notice: "Dreams imported."
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
    Dream.import(params[:file])
    redirect_to root, notice: "Dreams imported."
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
end

  def micropost
    @micropost = Micropost.first
  end

  def content
    @micropost = Micropost.content
  end

