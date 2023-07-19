class AddChoiceIdToSuggestedEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :suggested_events, :choices, foreign_key: true
  end
end
