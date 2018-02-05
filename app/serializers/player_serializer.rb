class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :height, :weight, :image_url, :team_id, :likes
  belongs_to :team
end
