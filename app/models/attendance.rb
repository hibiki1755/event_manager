class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :user_id, uniqueness: { scope: :event_id, message: "は既にこのイベントに参加しています。" }
end
