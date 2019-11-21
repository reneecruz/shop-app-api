class OrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :user, :status

  belongs_to :user
  has_many :order_items
end
