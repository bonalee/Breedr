class AddMatchIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :match_id, :integer
  end
end
