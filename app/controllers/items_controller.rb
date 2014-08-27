class ItemsController < ApplicationController

  def index
    @items = Item.all
    @item = Item.new
    @items_test = Item.where(tag_list: 'asdf')
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :tag_list)
  end

end
