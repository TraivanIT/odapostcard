module ApplicationHelper

  def active? path
    "active" if current_page? path
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
      else
        Order.new
      end
  end



end
