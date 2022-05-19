class EngItemsController < ApplicationController
  def index
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

  private
  
  def eng_item_params
    params.require(:eng_item).permit(:image, :item_name, :description, :category_id, :condition_id, :area_id, :price).merge(user_id: current_user.id)
  end
end
