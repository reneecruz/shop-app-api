class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :img_url
end
