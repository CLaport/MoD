class Choice < ApplicationRecord
  belongs_to :user
  belongs_to :interest
  belongs_to :suggested_events
end
