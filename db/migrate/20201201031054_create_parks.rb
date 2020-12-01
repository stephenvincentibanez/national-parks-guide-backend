class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :description
      t.string :states
      t.string :images
      t.string :activities
      t.string :entrance_fees
      t.string :latlong

      t.timestamps
    end
  end
end
