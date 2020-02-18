require 'rails_helper'

RSpec.describe "course_instructors/new", type: :view do
  before(:each) do
    assign(:course_instructor, CourseInstructor.new(
      :course => nil,
      :instructor => nil
    ))
  end

  it "renders new course_instructor form" do
    render

    assert_select "form[action=?][method=?]", course_instructors_path, "post" do

      assert_select "input[name=?]", "course_instructor[course_id]"

      assert_select "input[name=?]", "course_instructor[instructor_id]"
    end
  end
end
