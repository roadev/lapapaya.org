class DreamsController < ApplicationController
  before_action :set_dream, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  def index
    if params[:tag]
      @dreams = Dream.tagged_with(params[:tag])
  else    
    @dreams = Dream.all
  end
end

  def show
    @related = Dream.tagged_with(@tag, :on => :tags)
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
		    redirect_to @dream, notice: 'Ya creaste un sueño, ahora cúmplelo!' 
		  else
		    render action: 'new'
		  end
	end

  def update
    redirect_to @dream
    end


  def destroy
    @dream.destroy
     redirect_to dreams_url 
  end

  private
    def set_dream
      @dream = Dream.find(params[:id])
    end
  end

  def correct_user
    @dream = current_user.dreams.find_by(id: params[:id])
    redirect_to dreams_path, notice: "Not authorized to edit this dream" if @dream.nil?
  end


	def dream_params
		params.require(:dream).permit(:dream, :image, :quiero, :ofrezco, :necesito, :tag_list)
	end

  def micropost
    @micropost = Micropost.first
  end

  def content
    @micropost = Micropost.content
  end

