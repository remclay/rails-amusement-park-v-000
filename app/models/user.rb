class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  validates_inclusion_of :admin, :in => [true, false]
  has_secure_password

  def mood
    self.happiness >= self.nausea ? "happy" : "sad"
  end
end
