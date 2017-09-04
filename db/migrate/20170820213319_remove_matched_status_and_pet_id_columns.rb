class RemoveMatchedStatusAndPetIdColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :pets, :matched_status
    remove_column :pets, :matched_pet_id
  end
end
