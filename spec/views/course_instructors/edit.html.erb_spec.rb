require 'rails_helper'

RSpec.describe "course_instructors/edit", type: :view do
  before(:each) do
    @course_instructor = assign(:course_instructor, CourseInstructor.create!(
      :course => nil,
      :instructor => nil
    ))
  end

  it "renders the edit course_instructor form" do
    render

    assert_select "form[action=?][method=?]", course_instructor_path(@course_instructor), "post" do

      assert_select "input[name=?]", "course_instructor[course_id]"

      assert_select "input[name=?]", "course_instructor[instructor_id]"
    end
  end
end
