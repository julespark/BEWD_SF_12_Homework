class ContactController < ApplicationController
	def index
		@contacts = Contact.all
	end

	def send_text
		require 'twilio-ruby' 

		account_sid = ENV["TW_SID"] 
		auth_token = '' 

		@contact = Contact.find(params[:id])
 
		@client = Twilio::REST::Client.new account_sid, auth_token 
 
		@client.account.messages.create({
			:from => '+19256901044', 
			:to => @contact.phone, 
			:body => params[:body]
		})
	end
end
