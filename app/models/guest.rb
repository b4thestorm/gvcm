class Guest < ActiveRecord::Base
  validates :email, :email_format => {message: 'needs valid email format'}

  
end
