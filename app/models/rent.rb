class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon
  validates :start_time, :end_time, :total_price, presence:true
  validate :start_time_cannot_be_greater_than_end_time

  def start_time_cannot_be_greater_than_end_time
    if start_time.present? && end_time.present? && start_time > end_time
      errors.add(:start_time, "can't be greater than end time")
    end
  end
end
