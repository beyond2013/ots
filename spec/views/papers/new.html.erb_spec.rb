require 'rails_helper'

RSpec.describe "papers/new", type: :view do
  before(:each) do
    assign(:paper, Paper.new(
      :program_sessions => nil,
      :course_instructors => nil,
      :exam => nil
    ))
  end

  it "renders new paper form" do
    render

    assert_select "form[action=?][method=?]", papers_path, "post" do

      assert_select "input[name=?]", "paper[program_sessions_id]"

      assert_select "input[name=?]", "paper[course_instructors_id]"

      assert_select "input[name=?]", "paper[exam_id]"
    end
  end
end
