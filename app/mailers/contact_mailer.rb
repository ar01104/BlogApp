class ContactMailer < ApplicationMailer

  def contact_email(email, name , subject, enquieries)
    @email = email
    @name = name
    @subject = subject
    @enquieries = enquieries

    mail cc: @email
  end

end
