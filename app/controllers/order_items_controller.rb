class OrderItemsController < ApplicationController

    def index 
        render json: OrderItem.all      
    end

    def show
    end

    def create 
      
        render json: OrderItem.create(order_item_params)
    end 

    private 

    def order_item_params 
        params.permit(:order_id, :item_id)
    end
    
end
