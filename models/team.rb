class Team < ApplicationRecord
  has_many :players
  validates :name, presence: true
  validates :wins, presence: true
  validates :losses, presence: true
end
