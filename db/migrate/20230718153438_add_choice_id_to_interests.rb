class AddChoiceIdToInterests < ActiveRecord::Migration[7.0]
  def change
    add_reference :interests, :choices, foreign_key: true
  end
end
