class OrderItemSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :item
  # belongs_to :order
end
