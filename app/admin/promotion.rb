ActiveAdmin.register Promotion do

  show do |ad|
      attributes_table do
        row :user
        row :region
        row :brand
        row :category
        row :budget_amount
        row :amount_requested
        row :amount_reimbursed
        row :promotion_payment_status
        row :payment_date
        row :payment_reference
        row :start_date
        row :end_date
        row :sales_volume
        row :created_at
        row :description        
      end
      table_for promotion.documents do         
            column("File"){|document| link_to(document.title, document.file.to_s ) }
      end
      active_admin_comments
  end
  
  form do |f|
       f.inputs :brand, :promotion_category, :promotion_payment_status, :region
       f.inputs :user, :budget_amount, :currency, :amount_requested, :amount_reimbursed, :payment_date, :payment_reference, :start_date, :end_date, :sales_volume 
       f.actions
  end
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
