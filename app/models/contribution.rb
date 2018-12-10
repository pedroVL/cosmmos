class Contribution < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :equity, presence: true
  validates :job_title, presence: true
end
