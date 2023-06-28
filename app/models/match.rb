class Match < ApplicationRecord
  belongs_to :user
  belongs_to :choices
end
