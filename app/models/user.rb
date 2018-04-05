class User < ActiveRecord::Base
  validates :password, presence: true
  has_many :rides
  has_many :attractions, through: :rides
  validates_inclusion_of :admin, :in => [true, false]
  has_secure_password

  def mood
    if self.happiness >= self.nausea
      "happy"
    else
      "sad"
    end
  end
end
