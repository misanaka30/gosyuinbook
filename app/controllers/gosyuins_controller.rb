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


  private
  def gosyuin_params
   params.require(:gosyuin).permit(:title, :prefecture_id, :stamp_id, :limited_id, :caption, :image ).merge(user_id: current_user.id)
  end
end
