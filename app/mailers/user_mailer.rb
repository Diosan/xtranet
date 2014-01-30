class UserMailer < ActionMailer::Base
  default from: "xnet.angostura@gmail.com"

  def registration_confirmation(user, password)
    @user = user
    @password = password
    mail(:to => user.email, :subject => "Registered")
  end

end
