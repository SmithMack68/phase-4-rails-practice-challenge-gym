class MembershipSerializer < ActiveModel::Serializer
  attributes :charge
  
  belongs_to :client
  belongs_to :gym
end
