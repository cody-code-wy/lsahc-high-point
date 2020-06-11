class Registration < ApplicationRecord
  validates :horse, presence: true, uniqueness: { scope: :rider }
  validates :rider, presence: true
end
