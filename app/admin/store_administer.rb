ActiveAdmin.register_page "Store Administration" do
    content do
      text_node %{<iframe src="/shop/admin" width="100%" height="1500px" scrolling="no" frameborder="no"></iframe>}.html_safe
    end
  end
