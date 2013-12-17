class StockMailer < ActionMailer::Base
  def stock_low_notification(stock_item)
    @product = stock_item.variant.product
    @product_name = @product.name
    @product_link = main_app.root_url + "shop/admin/products/" + stock_item.variant.product.permalink + "/stock"
    Spree::Role.find(1).users.each do | admin_user |
      mail(:to => admin_user.email, :subject => Spree::Config[:site_name] + ": Stock Low Notification for '" + stock_item.variant.product.name + "'", :from => Spree::Config[:mails_from])
    end
  end
end
