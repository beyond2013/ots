class Program < ApplicationRecord

	has_many :sessions, through: :program_sessions
  has_many :program_sessions

  def name_with_nature
    "#{name} - #{nature}"
  end
end
