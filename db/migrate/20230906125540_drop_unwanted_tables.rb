class DropUnwantedTables < ActiveRecord::Migration[7.0]
  def change
    def up
      drop_table :event00s if ActiveRecord::Base.connection.table_exists?(:event00s)
      drop_table :events if ActiveRecord::Base.connection.table_exists?(:events)
      drop_table :list00s if ActiveRecord::Base.connection.table_exists?(:list00s)
      drop_table :lists if ActiveRecord::Base.connection.table_exists?(:lists)
    end

    def down
      # This method can be empty or omitted since you won't be recreating these tables.
    end
  end
end
