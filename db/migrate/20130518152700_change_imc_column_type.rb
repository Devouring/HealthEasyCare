class ChangeImcColumnType < ActiveRecord::Migration
  def up
    rename_column :imcs, :imc, :value
    change_column :imcs, :value, :double
  end

  def down
    rename_column :imcs, :value, :imc
    change_column :imcs, :imc, :integer
  end
end
