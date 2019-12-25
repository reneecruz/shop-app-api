class Order < ApplicationRecord
    belongs_to :user

    has_many :order_items
    has_many :items, through: :order_items

    def total_price 
        self.items.map(&:price).reduce(&:+)
        #  self.items.reduce do |item| 
        #     item.price 
        #  end
    end
end
