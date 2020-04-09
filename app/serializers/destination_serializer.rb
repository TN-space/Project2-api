class DestinationSerializer < ActiveModel::Serializer
  attributes :name, :city, :state, :id
  belongs_to :user
end
