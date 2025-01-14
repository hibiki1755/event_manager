class Event < ApplicationRecord
  belongs_to :user

  validates :title, :start_time, :end_time, presence: true
  validates :description, length: { maximum: 500 }

  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user
end
