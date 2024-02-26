class AddDateVisitedToPlaces < ActiveRecord::Migration[7.1]
  def up
    # Add the column with the null constraint and default value
    add_column :places, :date_visited, :timestamp, null: false, default: -> { "CURRENT_DATE" }

    # Update existing rows to set a meaningful value for date_visited
    execute("UPDATE places SET date_visited = NOW() WHERE date_visited IS NULL")
  end

  def down
    # If you need to rollback the migration, reverse the changes
    remove_column :places, :date_visited
  end
end