class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :round

  validates :equity, presence: true
  validates :price, presence: true

end
