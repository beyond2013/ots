require 'rails_helper'

RSpec.describe "ProgramSessions", type: :request do
  describe "GET /program_sessions" do
    it "works! (now write some real specs)" do
      get program_sessions_path
      expect(response).to have_http_status(200)
    end
  end
end
