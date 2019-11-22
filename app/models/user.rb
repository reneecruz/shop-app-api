class User < ApplicationRecord
    has_many :orders
    has_many :order_items, through: :orders

    validates_uniqueness_of :username

    has_secure_password
end
