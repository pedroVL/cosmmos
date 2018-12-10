class Round < ApplicationRecord
  belongs_to :project
  has_many :investments
  validates :total_equity, presence: true
  validates :price, presence: true

end
