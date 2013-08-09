class ContactMailer < ActionMailer::Base
  
  def contact_us(contact)
  	@message = contact.message
  	@name = contact.name
  	mail(from: contact.email, to: 'nestor.bermudez@unitec.edu', subject: contact.subject)
  end
end
