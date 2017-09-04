class ChangeBreedToBreedId < ActiveRecord::Migration[5.1]
  def change
    remove_column :pets, :breed, :string
    add_column :pets, :breed_id, :integer
  end
end
