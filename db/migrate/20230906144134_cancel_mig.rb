class CancelMig < ActiveRecord::Migration[7.0]
  def change
    def up
      # Write code to undo the changes made by the pending migration
      # For example, if the pending migration created a table, you can drop it here.
      drop_table :user_events
    end

    def down
      # Write code to revert the changes if needed.
    end
  end
end
