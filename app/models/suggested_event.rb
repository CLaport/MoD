class SuggestedEvent < ApplicationRecord
  belongs_to :choice
  has_many :interests, through: :suggestions
  has_many :users, through: :choices
end
