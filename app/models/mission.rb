class Mission < ApplicationRecord
  ALLOWED_STATUSES = %w[pending booked finished].freeze

  after_initialize :initialize_candidates_email, if: :new_record?

  belongs_to :animal
  belongs_to :user

  validates :city, presence: true
  validates :fee, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :animal_id, presence: true
  validates :status, presence: true, inclusion: { in: ALLOWED_STATUSES }

  def available!
    self.update!(status: 'available')
  end

  def pending!
    self.update!(status: 'pending')
  end

  def booked!
    self.update!(status: 'booked')
  end

  def finished!
    self.update!(status: 'finished')
  end

  def pending?
    self.status.eql?('pending')
  end

  def serialized_candidates
    self.candidates['candidates_email']
  end

  private

  def initialize_candidates_email
    self.candidates = {}
    self.candidates[:candidates_email] = []
  end
end
