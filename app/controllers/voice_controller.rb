class VoiceController < ApplicationController
  def index
    @voices = Voice.all
    @animations = Animation.all
    @voice  = Voice.find(1)
  end

  def show
    @voice = Voice.find(params[:id])
    @animations = Animation.where(voice_id: params[:id])
  end

  def new
    voice = Voice.new
    voice.animations.build
  end

  def create
    @voice = Voice.new(cvoice_params)
    @animation = @voice.animations.build(animation_params)
    #binding.pry
    @voice.save
    @animation.save
    redirect_to action: :index 
  end

  def edit
    @voice = Voice.find(params[:id])
  end

  def update
    voice = Voice.find(params[:id])
    voice.update(uvoice_params)
    redirect_to action: :index 
  end

  def destroy
    voice = Voice.find(params[:id])
    voice.destroy
    redirect_to action: :index 
  end

  private
  
  def cvoice_params
    params.permit(:name, :anime, :game, :other)
  end
  def uvoice_params
    params.require(:voice).permit(:id, :name, :anime, :game, :other)
  end

  def animation_params
    params.permit(:title).merge(voice_id: params[@voice.id])
  end
end
