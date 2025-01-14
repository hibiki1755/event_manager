class Event < ApplicationRecord
  belongs_to :user

  validates :title, :start_time, :end_time, presence: true
  validates :description, length: { maximum: 500 }
end
