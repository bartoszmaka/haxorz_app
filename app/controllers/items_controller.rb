class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: { data: items }
  end
end
