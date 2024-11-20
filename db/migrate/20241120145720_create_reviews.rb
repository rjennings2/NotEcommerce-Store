class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.references :product, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.integer :rating
      t.text :comment
      t.date :review_date

      t.timestamps
    end
  end
end
