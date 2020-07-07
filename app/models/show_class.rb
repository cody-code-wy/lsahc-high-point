class ShowClass < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
