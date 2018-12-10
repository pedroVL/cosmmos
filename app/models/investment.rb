class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :project, through: :round

  validates :equity, presence: true
  validates :price, presence: true

end
