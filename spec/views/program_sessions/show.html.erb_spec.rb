require 'rails_helper'

RSpec.describe "program_sessions/show", type: :view do
  before(:each) do
    @program_session = assign(:program_session, ProgramSession.create!(
      :program => nil,
      :session => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
