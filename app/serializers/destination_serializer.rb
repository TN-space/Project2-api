class DestinationSerializer < ActiveModel::Serializer
  attributes :name, :city, :state
  # belongs_to :user
end
