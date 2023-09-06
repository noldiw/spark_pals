class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :eventso do |t|
    t.string "title"
    t.string "event_type"
    t.integer "user_id", null: false
    t.text "event_description"
    t.datetime "from_datetime"
    t.datetime "to_datetime"
    t.string "event_location"
    t.timestamps
    end
  end
end
