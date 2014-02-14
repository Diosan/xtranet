class UserMailer < ActionMailer::Base
  default from: "xnet.angostura@gmail.com"

  def registration_confirmation(user, password)
    @user = user
    @password = password
    mail(:to => user.email, :subject => "Registered")
  end
  
  def promotion_notification(promotion)
    @promotion = promotion
    Spree::Role.find(1).users.each do | admin_user |
    @admin_user = admin_user
       mail(:to => admin_user.email, :subject => "Promotion submitted by user " + admin_user.email + "at " + Spree::Config[:site_name], :from => Spree::Config[:mails_from])
    end
  end

end
