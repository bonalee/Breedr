class ChangeBreedToBreedId < ActiveRecord::Migration[5.1]
  def change
    remove_column :Pet, :breed, :string
    add_column :Pet, :breed_id, :integer
  end
end
