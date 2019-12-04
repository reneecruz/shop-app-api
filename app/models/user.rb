class User < ApplicationRecord
    has_many :orders
    has_many :order_items, through: :orders

    validates :username, uniqueness: true

    has_secure_password


    def active_order
        order = self.orders.find_by(status: "cart")
        # OrderSerializer.new(order)
        if order 
            OrderSerializer.new(order)
        else
            {
                order_items: []
            }
        end
    end

    def submitted_orders
        order = self.orders.select do |order|
            order.status == "order"
        end

        orders = order.map do |order|
            {
                id: order.id,
                order_items: order.items,
                date: order.updated_at
            }
        end
        # OrderSerializer.new(order)
        if order.length 
            # OrderSerializer.new(order)
            orders
        else
            []
        end
    end

    def create_new_order 
        Order.create(user: self, status: "cart")
    end

end
