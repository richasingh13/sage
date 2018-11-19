class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :cover_image
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :venue
      t.string :city
      t.string :state
      t.string :country
      t.float :latitude
      t.float :longitude
      t.integer :event_category_id

      t.timestamps
    end
  end
end
