class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.text :hotel_address
      t.text :hotel_cate
      t.text :hotelimg
      t.text :hotelname
      t.decimal :rating
      t.string :counting
      t.string :status

      t.timestamps
    end
  end
end
