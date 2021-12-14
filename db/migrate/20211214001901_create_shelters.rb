class CreateShelters < ActiveRecord::Migration[6.1]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :city
      t.integer :rank
      t.boolean :foster_program

      t.timestamps
    end
  end
end
