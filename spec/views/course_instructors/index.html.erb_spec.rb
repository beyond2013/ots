require 'rails_helper'

RSpec.describe "course_instructors/index", type: :view do
  before(:each) do
    assign(:course_instructors, [
      CourseInstructor.create!(
        :course => nil,
        :instructor => nil
      ),
      CourseInstructor.create!(
        :course => nil,
        :instructor => nil
      )
    ])
  end

  it "renders a list of course_instructors" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
