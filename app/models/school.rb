class School < ApplicationRecord
  has_many :courses
  has_many :batches, through: :courses
end
