class Mission < ApplicationRecord
  belongs_to :user
  validates :city, presence: true
  validates :fee, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :animal_id, presence: true
end
