require 'rails_helper'

RSpec.describe "program_sessions/new", type: :view do
  before(:each) do
    assign(:program_session, ProgramSession.new(
      :program => nil,
      :session => nil
    ))
  end

  it "renders new program_session form" do
    render

    assert_select "form[action=?][method=?]", program_sessions_path, "post" do

      assert_select "input[name=?]", "program_session[program_id]"

      assert_select "input[name=?]", "program_session[session_id]"
    end
  end
end
