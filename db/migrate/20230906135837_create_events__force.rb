class CreateEventsForce < ActiveRecord::Migration[7.0]
  def change
    create_table :events__forces do |t|

      t.timestamps
    end
  end
end
