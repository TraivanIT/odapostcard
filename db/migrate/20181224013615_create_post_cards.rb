class CreatePostCards < ActiveRecord::Migration[5.2]
  def change
    create_table :post_cards do |t|
      t.string :post_card_name
      t.float :post_card_price
      t.text :post_card_description
      t.string :post_card_code
      t.text :post_card_thumb_image
      t.text :post_card_image_one
      t.text :post_card_image_two
      t.text :post_card_image_three
      t.text :post_card_image_four
      t.text :post_card_image_five
      t.references :traivan, foreign_key: true

      t.timestamps
    end
  end
end
