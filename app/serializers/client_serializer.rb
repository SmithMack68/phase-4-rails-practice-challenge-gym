class ClientSerializer < ActiveModel::Serializer
  attributes :name, :age

  has_many :gyms
  has_many :memberships
end