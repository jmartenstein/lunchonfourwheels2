class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :website
      t.string :twitter
      t.string :yelp

      t.timestamps
    end
  end
end
