class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # def final_order
  #   # order=current_order
  #   # user=current_user
  #   # order.user_id=user.id
  #   # order.save!
  #   session[:order_id]=Order.new.id

  # end
end
