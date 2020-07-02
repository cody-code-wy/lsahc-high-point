class Show < ApplicationRecord
  validates :year, presence: true
  validates :name, presence: true, uniqueness: { scope: :year }
end
