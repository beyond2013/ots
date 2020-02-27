class ProgramSession < ApplicationRecord

  belongs_to :program
  belongs_to :session

  has_many :papers

  def program_with_session
    "#{Program.find(program_id).name_with_nature} - #{Session.find(session_id).session_start_finish}"
  end

end

