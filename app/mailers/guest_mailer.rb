class GuestMailer < ApplicationMailer
  default from: 'harlemhedgehog@gmail.com'

  def registration_confirmation(guest)
    mail(to: guest.email, subject:'Welcome to the GoodVibes Community')
  end
end
