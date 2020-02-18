class Session < ApplicationRecord
  has_many :programs, through: :program_session
end
