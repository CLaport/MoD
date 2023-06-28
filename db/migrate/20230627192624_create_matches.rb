class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.boolean :extended
      t.boolean :connected
      t.references :user, null: false, foreign_key: true
      t.references :choices, null: false, foreign_key: true

      t.timestamps
    end
  end
end
