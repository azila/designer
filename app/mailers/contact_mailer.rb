class ContactMailer < ApplicationMailer
  default to: "korotchenko.liza@gmail.com"
  default from: "contact@example.com"

  def contact_email(contact)
    @contact = contact
    mail(subject: 'Someone writes you!')
  end

end
