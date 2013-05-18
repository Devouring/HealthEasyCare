class ChangeTailleColumn < ActiveRecord::Migration
  def up
    remove_column :users, :taille, :integer
    add_column :imcs, :taille, :integer

  end

  def down
    remove_column :imcs, :taille, :integer
    add_column :users, :taille, :integer
  end
end
