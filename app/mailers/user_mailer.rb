class UserMailer < ApplicationMailer

  default from: 'info.sporting.nerds@gmail.com'

  def contact_form(email, name, message)
    @message = message
    @name = name
    mail(:from => email,
         #:to => 'info.sporting.nerds@gmail.com',
         :to => 'julian.eissing@t-online.de',
         :subject => "Sporting-Nerds: Eine neue Nachricht von #{name}")
  end
end
