class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :img_url

  has_many :order_items
end
