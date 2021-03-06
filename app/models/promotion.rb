class Promotion < ActiveRecord::Base
  belongs_to :region, :class_name => 'Spree::Country'
  belongs_to :brand, :class_name => 'Spree::Taxonomy'
  #has_one :currency, :class_name => 'Money::Currency::table' 
  belongs_to :promotion_category
  belongs_to :promotion_payment_status
  has_many :documents, :dependent => :destroy
  belongs_to :user
  accepts_nested_attributes_for :documents
  #before_create :make_processing
  after_save :notify_admins
  
  def documents_for_form
    collection = documents.where(promotion_id: id)
    collection.any? ? collection : documents.build
  end 
  
  def make_processing
    self.promotion_payment_status = PromotionPaymentStatus.find(2)
  end
  
  def notify_admins
     ActionMailer::Base.perform_deliveries = true
     ActionMailer::Base.raise_delivery_errors = true
     UserMailer.promotion_notification(self).deliver
  end
end
