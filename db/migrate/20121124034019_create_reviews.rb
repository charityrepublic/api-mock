class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.number :charity-id
      t.string :author
      t.string :title
      t.string :description
      t.string :name
      t.number :rating
      t.boolean :recommend

      t.timestamps
    end
  end
end
