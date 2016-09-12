class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :reviewer_id
      t.text :body
      t.integer :rating
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
