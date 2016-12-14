# Preview all emails at http://localhost:3000/rails/mailers/membermailer
class MembermailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/membermailer/welcome
  def welcome
    Membermailer.welcome
  end

end
