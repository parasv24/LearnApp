class Batch < ApplicationRecord
  belongs_to :course
  has_many :batches_users
  has_many :enrolled_students, -> { where(batches_users: { request_status: 1 }) }, through: :batches_users, source: :user
  has_many :pending_approval_students, -> { where(batches_users: { request_status: 0 }) }, through: :batches_users, source: :user
end
