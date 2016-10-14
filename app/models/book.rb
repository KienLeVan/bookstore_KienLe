class Book < ApplicationRecord
  has_many :rates
  validates_associated :rates
  validates_presence_of :title
end
