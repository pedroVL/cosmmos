class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects
  has_many :chats
  has_many :messages
  has_many :teams
  has_many :contributions
  has_many :investments

  validates :name, presence: true
end
