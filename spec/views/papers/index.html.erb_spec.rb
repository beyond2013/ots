require 'rails_helper'

RSpec.describe "papers/index", type: :view do
  before(:each) do
    assign(:papers, [
      Paper.create!(
        :program_sessions => nil,
        :course_instructors => nil,
        :exam => nil
      ),
      Paper.create!(
        :program_sessions => nil,
        :course_instructors => nil,
        :exam => nil
      )
    ])
  end

  it "renders a list of papers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
