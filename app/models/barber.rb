class Barber < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :appointments, dependent: :destroy

  def generate_filename
      self.image_filename = ((0...10).map { (65 + rand(26)).chr }.join + ".jpg")
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_id, presence: true
  validates :bio, presence: true
end
