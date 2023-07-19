class AddOptionsToChoices < ActiveRecord::Migration[7.0]
  def change
    add_column :choices, :mates_or_dates, :boolean
    add_column :choices, :now_or_later, :boolean
  end
end
