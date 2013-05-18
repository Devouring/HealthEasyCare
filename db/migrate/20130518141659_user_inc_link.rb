class UserIncLink < ActiveRecord::Migration
  def up
    add_column :imcs, :user_id, :integer
  end

  def down
    remove_column :imcs, :user_id, :integer
  end
end
