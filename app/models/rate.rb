class Rate < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :value, numericality: {greater_than: 0, less_than_or_equal_to: 5}
end
