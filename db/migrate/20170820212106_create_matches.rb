class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :pet_id
      t.integer :inverse_pet_id
      t.string :matched_status
      t.string :breed_id
      t.string :integer
      t.string :litter_date

      t.timestamps
    end
  end
end
