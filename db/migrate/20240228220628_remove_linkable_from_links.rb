class RemoveLinkableFromLinks < ActiveRecord::Migration[7.1]
  def change
    remove_column :links, :linkable_type, :string
    remove_column :links, :linkable_id, :string
  end
end
