class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :list_type
      t.string :envent_status

      t.timestamps
    end
  end
end
