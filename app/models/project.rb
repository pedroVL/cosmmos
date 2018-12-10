class Project < ApplicationRecord
  has_many :contributions
  has_many :investments, through: :rounds
  has_many :teams
  has_many :users, through: :teams

  validates :logo, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :about_us, presence: true

end
