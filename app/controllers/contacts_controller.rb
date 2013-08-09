class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def send_message
		@contact = Contact.new(params[:contact])
		ContactMailer.contact_us(@contact).deliver
		redirect_to message_sent_path
	end
end
