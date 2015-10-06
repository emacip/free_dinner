class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers,  id: false  do |t|
      t.integer :user_id, primary_key: true
      t.string :name
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end
end
