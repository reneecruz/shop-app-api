class OrderSerializer < ActiveModel::Serializer
  attributes :id, :status, :total_price

  # belongs_to :user
  has_many :order_items
end
