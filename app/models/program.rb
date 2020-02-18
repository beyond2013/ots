class Program < ApplicationRecord
	has_many :sessions, through: :program_session
end
