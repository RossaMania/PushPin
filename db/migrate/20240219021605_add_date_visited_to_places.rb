class AddDateVisitedToPlaces < ActiveRecord::Migration[7.1]
  def up
    # Add the column without the null constraint
    add_column :places, :date_visited, :timestamp

    # Update existing rows to set a default value or a meaningful value for date_visited
    execute("UPDATE places SET date_visited = NOW() WHERE date_visited IS NULL")

    # Add the null constraint now that existing rows are updated
    change_column :places, :date_visited, :timestamp, null: false
  end

  def down
    # If you need to rollback the migration, reverse the changes
    change_column :places, :date_visited, :timestamp, null: true

    # Remove the default value set during the 'up' migration
    execute("UPDATE places SET date_visited = NULL WHERE date_visited IS NOT NULL")

    remove_column :places, :date_visited
  end
end