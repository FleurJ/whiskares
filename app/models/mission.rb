class Mission < ApplicationRecord
  after_initialize :initialize_candidates_email, if: :new_record?

  belongs_to :animal
  belongs_to :user

  validates :city, presence: true
  validates :fee, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :animal_id, presence: true


  private

  def initialize_candidates_email
    self.candidates = {}
    self.candidates[:candidates_email] = []
  end
end
