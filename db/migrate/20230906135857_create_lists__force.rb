class CreateListsForce < ActiveRecord::Migration[7.0]
  def change
    create_table :lists__forces do |t|

      t.timestamps
    end
  end
end
