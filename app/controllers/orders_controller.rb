class OrdersController < ApplicationController

    def index 
        orders = Order.all 
        render json: Order.all
    end

    # def show
    # end

    # def update
       
    # end

    def checkout 
        encoded_token = request.headers['Authorization']
        decoded_token = JWT.decode(encoded_token, secret, true, { algorithm: 'HS256' })
        user_id = decoded_token[0]["user_id"]
        user = User.find(user_id)
        order = user.orders.find_by(status: "cart")
        order.update(status: "order")
        user.create_new_order
        user.submitted_orders
        render json: user, include: "**"
    end
    
end
