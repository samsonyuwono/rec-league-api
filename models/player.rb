class Player < ApplicationRecord
  belongs_to :team, optional: true
  validates :name, presence: true
  validates :weight, numericality: { only_integer: true }
  validates :height, numericality: { only_integer: true }
  validates :image_url, presence: true
end
