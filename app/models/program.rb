class Program < ApplicationRecord
	has_many :sessions, through: :program_session

  def name_with_nature
    "#{name} - #{nature}"
  end
end
