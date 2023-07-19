class Interest < ApplicationRecord
  belongs_to :choice
  has_many :users, through: :choices
  has_many :suggested_events, through: :suggestions
end
