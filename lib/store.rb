class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :has_apparel
  def has_apparel
    if !mens_apparel && !womens_apparel
      errors.add("No apparel!", "must have at least one apparel type")
    end
  end
end
