class CreateEvent00s < ActiveRecord::Migration[7.0]
  def change
    create_table :event00s do |t|
      t.string :title
      t.string :event_type
      t.references :user, null: false, foreign_key: true
      t.text :event_description
      t.datetime :from_datetime
      t.datetime :to_datetime
      t.string :event_location

      t.timestamps
    end
  end
end
