class Admin::PostCardsController < Admin::ApplicationController

  def index
    @post_cards = PostCard.all.order(id: :desc)
  end

  def new
    @post_card = PostCard.new
  end

  def create
    @post_card = PostCard.new(post_card_params)
    @post_card.traivan_id = current_traivan.id
    if @post_card.save
      redirect_to admin_post_cards_path, notice: 'Post card successfull created'
    else
      flash[:alert] = 'PostCard was problem created'
      render :new
    end

  end

  def show
    @post_card = PostCard.find(params[:id])
  end

  def edit
     @post_card = PostCard.find(params[:id])

  end

  def update
     @post_card = PostCard.find(params[:id])
     if @post_card.update(post_card_params)
      redirect_to admin_post_cards_path, notice: 'PostCard was update successfull'
    else
      flash[:alert] = 'PostCard was problem update'
      render :edit
    end
        
  end

  def destroy
     @post_card = PostCard.find(params[:id])
     @post_card.destroy
     redirect_to admin_post_cards_path, notice: 'PostCard was successfull delete'
  end

  private 
  def post_card_params
    params.require(:post_card).permit(:post_card_name, 
                                      :post_card_price, 
                                      :post_card_description,
                                      :post_card_code,
                                      :post_card_thumb_image,
                                      :post_card_image_one,
                                      :post_card_image_two,
                                      :post_card_image_three,
                                      :post_card_image_four,
                                      :post_card_image_five,
                                      :traivan_id)
  end
end
