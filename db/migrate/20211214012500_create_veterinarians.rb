class CreateVeterinarians < ActiveRecord::Migration[6.1]
  def change
    create_table :veterinarians do |t|
      t.string :name
      t.integer :review_rating
      t.boolean :on_call
      t.references :veterinary_office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
