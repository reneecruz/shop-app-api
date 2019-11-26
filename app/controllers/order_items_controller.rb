class OrderItemsController < ApplicationController

    def index 
        render json: OrderItem.all      
    end

    def show
    end
    
end
