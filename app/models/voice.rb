class Voice < ApplicationRecord
  has_many :animations, :foreign_key => 'voice_id',dependent: :destroy
end
