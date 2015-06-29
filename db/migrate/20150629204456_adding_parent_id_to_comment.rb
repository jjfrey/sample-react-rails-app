class AddingParentIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :parent_id, :int
  end
end
