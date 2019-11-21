class OrdersController < ApplicationController

    def index 
        orders = Order.all 
        render json: Order.all
    end
end
