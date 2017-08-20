class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.integer :user_id
      t.string :birthdate
      t.string :gender
      t.string :matched_status
      t.integer :matched_pet_id

      t.timestamps
    end
  end
end
