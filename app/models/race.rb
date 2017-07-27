class Race < ApplicationRecord
  belongs_to :user, optional: true
end
