class BatchesUser < ApplicationRecord
  belongs_to :batch
  belongs_to :user
end
