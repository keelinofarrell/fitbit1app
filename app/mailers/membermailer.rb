class Membermailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.membermailer.welcome.subject
  #
 def welcome(member)
	@member = member
	mail(to: @member.email, subject: "Welcome to the fitbit site")
 end
end
