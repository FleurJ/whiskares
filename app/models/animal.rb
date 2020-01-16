class Animal < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :species, presence: true
  validates :needs, presence: true
  validates :dangerosity, inclusion: { in: 0..5 }
end
