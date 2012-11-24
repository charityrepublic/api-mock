class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :location
      t.string :country
      t.string :description

      t.timestamps
    end
  end
end
