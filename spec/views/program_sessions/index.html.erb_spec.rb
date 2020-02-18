require 'rails_helper'

RSpec.describe "program_sessions/index", type: :view do
  before(:each) do
    assign(:program_sessions, [
      ProgramSession.create!(
        :program => nil,
        :session => nil
      ),
      ProgramSession.create!(
        :program => nil,
        :session => nil
      )
    ])
  end

  it "renders a list of program_sessions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
