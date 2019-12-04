class OrderItemsController < ApplicationController

    def index 
        render json: OrderItem.all      
    end

    def show
        order_item = OrderItem.find(params[:id])
        render json: order_item, include: "**"
    end

    def create 
        # render json: OrderItem.create(order_item_params)
        render json: OrderItem.create(order_item_params)
    end 

    def destroy 
        order_item = OrderItem.find(params[:id])
        order_item.destroy
        render json: user, include: "**"
    end

    private 

    def order_item_params 
        params.permit(:order_id, :item_id)
    end
    
end
