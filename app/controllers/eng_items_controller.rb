class EngItemsController < ApplicationController
  before_action :find_params, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @eng_items = EngItem.all.order(created_at: :desc)  
  end

  def new
    @eng_item = EngItem.new
  end

  def create
    @eng_item = EngItem.new(eng_item_params)
    if @eng_item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @eng_item.update(eng_item_params)
      redirect_to eng_item_path(@eng_item)
    else
      render :edit
    end
  end

  def destroy
    if @eng_item.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  
  def eng_item_params
    params.require(:eng_item).permit(:image, :item_name, :description, :category_id, :condition_id, :area_id, :price).merge(user_id: current_user.id)
  end

  def find_params
    @eng_item = EngItem.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @eng_item.user
  end
end
