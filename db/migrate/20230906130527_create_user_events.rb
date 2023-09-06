class CreateUserEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :user_events do |t|
      t.string "title"
      t.string "event_type"
      t.integer "user_id", null: false
      t.text "event_description"
      t.datetime "from_datetime"
      t.datetime "to_datetime"
      t.string "event_location"
      t.timestamps
    end

    # Corrected index name based on the table name
    add_index :user_events, :user_id, name: "index_user_events_on_user_id"
  end
end
