class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :img_url, :active_order, :submitted_orders

  # has_many :orders

end
