class Appointment < ApplicationRecord
  belongs_to :schedule
  validates :end_time, numericality: true
  validates :start_time, numericality: true
  validate :end_time_past_start_time

  def end_time_past_start_time
    if end_time - start_time < 0
      errors.add(:end_time, "must be after start time.")
    end
  end
end
