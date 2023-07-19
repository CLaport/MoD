class AddIdsToSuggestions < ActiveRecord::Migration[7.0]
  def change
    add_reference :suggestions, :interests, foreign_key: true
    add_reference :suggestions, :suggested_events, foreign_key: true
  end
end
