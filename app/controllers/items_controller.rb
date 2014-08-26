class ItemsController < ApplicationController

  def index
    @items = Item.all
    @item = Item.new
  end

  def item_params
    params.require(:item).permit(:name, :tag_list)
  end

end
