require 'rails_helper'

RSpec.describe "course_instructors/show", type: :view do
  before(:each) do
    @course_instructor = assign(:course_instructor, CourseInstructor.create!(
      :course => nil,
      :instructor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
