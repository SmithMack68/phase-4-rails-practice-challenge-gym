class GymSerializer < ActiveModel::Serializer
  attributes :name, :address

  has_many :clients
  has_many :memberships
end
