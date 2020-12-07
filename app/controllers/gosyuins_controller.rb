class GosyuinsController < ApplicationController
  before_action :authenticate_user!, except: [:index] 

  def index
    @gosyuins = Gosyuin.all
  end

  def new
    @gosyuin = Gosyuin.new
  end

  def create
    @gosyuin = Gosyuin.create(gosyuin_params)
    if @gosyuin.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
   @gosyuin = Gosyuin.find(params[:id])
  end 

  def edit
   @gosyuin = Gosyuin.find(params[:id])
  end
  
  def update
    @gosyuin = Gosyuin.find(params[:id])
    if @gosyuin.update(gosyuin_params)
       redirect_to root_path
    else
       render :edit
    end
  end

  private
  def gosyuin_params
   params.require(:gosyuin).permit(:title, :prefecture_id, :stamp_id, :limited_id, :caption, :image ).merge(user_id: current_user.id)
  end
end
