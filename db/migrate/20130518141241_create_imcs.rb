class CreateImcs < ActiveRecord::Migration
  def change
    create_table :imcs do |t|
      t.integer :poids
      t.datetime :date
      t.integer :imc

      t.timestamps
    end
  end
end
