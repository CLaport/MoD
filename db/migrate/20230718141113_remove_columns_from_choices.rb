class RemoveColumnsFromChoices < ActiveRecord::Migration[7.0]
  def change
    remove_column :choices, :interest_id
    remove_column :choices, :suggested_events_id
  end
end
