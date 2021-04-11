class CreateFooddetails < ActiveRecord::Migration[6.1]
  def change
    create_table :fooddetails do |t|
      t.string :foodname, null: false
      t.string :foodtype, null: false
      t.string :fooddes, null: false
      t.decimal :foodrating, null: false
      t.decimal :foodprice,null:false
      t.string :foodtiming, null: false,:limit => 4
      t.string :foodimgsrc, null:false
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
