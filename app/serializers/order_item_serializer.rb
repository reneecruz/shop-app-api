class OrderItemSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :item
end
