class Review < ActiveRecord::Base
  belongs_to :barber

  validates :barber_id, presence: true
  validates :client_name, presence: true
  validates :str, presence: true
  validates :rating, presence: true
end
