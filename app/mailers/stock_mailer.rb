class StockMailer < ActionMailer::Base
  def stock_low_notification(stock_item)
    Spree:RoleUser.where(role_id: 1).each do | role_user |
      mail(:to => role_user.email, :subject => "#{Spree::Config[:site_name]} Low Stock Notification", :from => "dion.santana@gmail.com")
    end
  end
end
