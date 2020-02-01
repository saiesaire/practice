class Animation < ApplicationRecord
  belongs_to :voice,optional: true, dependent: :destroy
end
