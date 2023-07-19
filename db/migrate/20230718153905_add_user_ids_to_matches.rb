class AddUserIdsToMatches < ActiveRecord::Migration[7.0]
  def change
    change_table :matches do |t|
      t.references :first_user, foreign_key: { to_table: :users }
      t.references :second_user, foreign_key: { to_table: :users }
    end
  end
end
