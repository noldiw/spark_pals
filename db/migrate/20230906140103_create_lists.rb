class CreateLists < ActiveRecord::Migration[7.0]
  def change
  create_table :listso do |t|
  t.integer :user_id, null: false
  t.integer :event_id, null: false
  t.string :title
  t.string :list_type
  t.string :event_status
  t.timestamps
  end
  end
end
