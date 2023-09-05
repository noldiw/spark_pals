class CreateList00s < ActiveRecord::Migration[7.0]
  def change
    create_table :list00s do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.string :title
      t.string :list_type
      t.string :envent_status
      t.datetime :created_at

      t.timestamps
    end
  end
end
