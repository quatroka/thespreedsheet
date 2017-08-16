class SpreedSheet < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
