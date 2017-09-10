class AddPetIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :inverse_pet_id, :integer
  end
end
