class User < ApplicationRecord
  belongs_to :city
  has_many :comment                    
  before_save { email.downcase! }
#  def password
#    @password ||= Password.new(password_hash)
#  end

#  def password=(new_password)
#    @password = Password.create(new_password)
#    self.password_hash = @password
#  end
end
