class RemoveMatchedStatusAndPetIdColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :Pet, :matched_status
    remove_column :Pet, :matched_pet_id
  end
end
