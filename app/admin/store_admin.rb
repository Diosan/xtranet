ActiveAdmin.register_page "View Store" do
    menu :parent => "Store Administration"
    content do
      text_node %{<iframe src="/shop" width="100%" height="1500px" scrolling="no" frameborder="no"></iframe>}.html_safe
    end
  end

ActiveAdmin.register_page "Store Admin" do
    menu false
  end
