class Animal < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :species, presence: true
  validates :needs, presence: true
  validates :dangerosity, inclusion: { in: %w[1 2 3 4 5] }
end
