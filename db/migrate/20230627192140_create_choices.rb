class CreateChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :choices do |t|
      t.references :user, null: false, foreign_key: true
      t.references :interest, null: false, foreign_key: true
      t.references :suggested_events, null: false, foreign_key: true

      t.timestamps
    end
  end
end
