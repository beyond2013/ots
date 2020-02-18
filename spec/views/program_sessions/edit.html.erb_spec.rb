require 'rails_helper'

RSpec.describe "program_sessions/edit", type: :view do
  before(:each) do
    @program_session = assign(:program_session, ProgramSession.create!(
      :program => nil,
      :session => nil
    ))
  end

  it "renders the edit program_session form" do
    render

    assert_select "form[action=?][method=?]", program_session_path(@program_session), "post" do

      assert_select "input[name=?]", "program_session[program_id]"

      assert_select "input[name=?]", "program_session[session_id]"
    end
  end
end
