class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validate :salary_check
  validates :store_id, presence: true
  def salary_check
    if hourly_rate < 40 || hourly_rate > 200
      errors.add(:hourly_rate, "must be between 40 and 200")
    end
  end
end
