class OrderSerializer < ActiveModel::Serializer
  attributes :id, :status

  # belongs_to :user
  has_many :order_items
end
