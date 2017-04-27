class UserMailer < ApplicationMailer

  'info.sporting.nerds@gmail.com'

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
         #:to => 'info.sporting.nerds@gmail.com',
         :to => 'julian.eissing@t-online.de',
         :subject => "Eine neue Nachricht von #{name}")
  end
end
