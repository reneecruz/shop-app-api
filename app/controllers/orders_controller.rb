class OrdersController < ApplicationController

    def index 
        orders = Order.all 
        render json: Order.all
    end

    def show
    end
    
end
