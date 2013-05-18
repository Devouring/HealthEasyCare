class CreateVaccins < ActiveRecord::Migration
  def change
    create_table :vaccins do |t|
      t.string :nom
      t.datetime :date
      t.datetime :rappel
      t.integer :user_id

      t.timestamps
    end
  end
end
