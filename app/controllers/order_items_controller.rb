class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)

    if @order.save
      session[:order_id] = @order.id
      redirect_to carts_path, notice: "Post card was success buy"
    else
      session[:order_id] = nil
      
    end
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    redirect_to carts_path, notice: "Post card was success update quantity"
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    redirect_to carts_path, notice: "post_card was success delete"
    @order_items = @order.order_items
    
  end


  private 
    def order_item_params
      params.require(:order_item).permit(:post_card_id, :quantity)
    end
end
