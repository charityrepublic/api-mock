class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :charity_id
      t.string :author
      t.string :title
      t.string :description
      t.string :name
      t.integer :rating
      t.boolean :recommend

      t.timestamps
    end
  end
end
