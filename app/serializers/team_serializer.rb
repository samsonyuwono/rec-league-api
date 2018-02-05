class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :wins, :losses, :logo_url
  has_many :players
end
