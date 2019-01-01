class PostCard < ApplicationRecord
  belongs_to :traivan
  has_many :order_items, dependent: :destroy

  validates :post_card_name, presence: true
  validates :post_card_price, presence: true
  validates :post_card_code, presence: true
  validates :post_card_description, presence: true


  mount_uploader :post_card_thumb_image, PostCardUploader
  mount_uploader :post_card_image_one, PostCardUploader
  mount_uploader :post_card_image_two, PostCardUploader
  mount_uploader :post_card_image_three, PostCardUploader
  mount_uploader :post_card_image_four, PostCardUploader
  mount_uploader :post_card_image_five, PostCardUploader




  
end
