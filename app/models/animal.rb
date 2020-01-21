class Animal < ApplicationRecord
  belongs_to :user
  has_many :missions
  validates :name, presence: true
  validates :species, presence: true
  validates :needs, presence: true
  validates :dangerosity, inclusion: { in: 0..5 }
  has_one_attached :photo
end
