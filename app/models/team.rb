class Team < ApplicationRecord
  has_many :players
  belongs_to :user
  
  validates :name, presence: true
  validates :wins, presence: true
  validates :losses, presence: true
end
