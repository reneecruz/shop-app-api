class User < ApplicationRecord
    has_many :orders
    has_many :order_items, through: :orders

    validates :username, uniqueness: true

    has_secure_password


    def active_order
        order = self.orders.find_by(status: "cart")
        OrderSerializer.new(order)
    end


end
