class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_type
      t.string :event_title
      t.references :user, foreign_key: true
      t.text :event_description
      t.datetime :from_datetime
      t.datetime :to_datetime
      t.string :event_location
      t.timestamps
    end
  end
end
