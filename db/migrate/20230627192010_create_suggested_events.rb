class CreateSuggestedEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :suggested_events do |t|
      t.string :name
      t.text :description
      t.references :interest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
