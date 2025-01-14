class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 20 }

  has_many :events, dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :attending_events, through: :attendances, source: :event
end
