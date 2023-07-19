class Choice < ApplicationRecord
  belongs_to :user
  has_many :interests
  has_many :suggested_events, through: :interests
end
