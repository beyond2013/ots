class Session < ApplicationRecord

  has_many :programs, through: :program_sessions

  def session_start_finish
    "#{start.strftime("%Y")} - #{finish.strftime("%Y")}"
  end
end
