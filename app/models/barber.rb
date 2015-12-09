class Barber < ActiveRecord::Base
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :appointments, dependent: :destroy

  def generate_filename
      self.image_filename = ((0...10).map { (65 + rand(26)).chr }.join + ".jpg")
  end
end
