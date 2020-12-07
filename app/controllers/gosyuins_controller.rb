class GosyuinsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] 
  before_action :set_gosyuin, except: [:index, :new, :create]

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
  end 

  def edit
  end
  
  def update
   if @gosyuin.update(gosyuin_params)
      redirect_to root_path
   else
      render :edit
   end
  end

  def destroy
    @gosyuin.destroy
    redirect_to root_path
  end

  private
  def gosyuin_params
   params.require(:gosyuin).permit(:title, :prefecture_id, :stamp_id, :limited_id, :caption, :image ).merge(user_id: current_user.id)
  end

  def set_gosyuin
    @gosyuin = Gosyuin.find(params[:id])
  end
end
