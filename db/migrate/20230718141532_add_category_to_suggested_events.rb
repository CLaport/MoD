class AddCategoryToSuggestedEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :suggested_events, :category, :text
  end
end
