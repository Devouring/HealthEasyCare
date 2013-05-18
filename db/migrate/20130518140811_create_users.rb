class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :taille
      t.integer :age
      t.string :login
      t.string :password
      t.string :email
      t.string :medecin

      t.timestamps
    end
  end
end
