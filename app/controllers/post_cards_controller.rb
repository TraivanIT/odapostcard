class PostCardsController < ApplicationController
  def index

    @post_cards = PostCard.all.order(id: :desc)
    

  end

  def show
    @post_card = PostCard.find(params[:id])
    @order_item = current_order.order_items.new
  end
end
