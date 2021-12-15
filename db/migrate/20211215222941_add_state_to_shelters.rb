class AddStateToShelters < ActiveRecord::Migration[6.1]
  def change
    add_column :shelters, :state, :string
  end
end
