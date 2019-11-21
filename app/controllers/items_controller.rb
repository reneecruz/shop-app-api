class ItemsController < ApplicationController
    def index
        @items = Item.all
        render json: Item.all
    end

    def show
        render json: @item
    end
end
