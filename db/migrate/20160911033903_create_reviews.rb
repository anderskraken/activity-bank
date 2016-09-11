class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :commenter_id
      t.text :body
      t.integer :rating
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
