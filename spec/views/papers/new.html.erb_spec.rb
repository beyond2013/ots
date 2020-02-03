require 'rails_helper'

RSpec.describe "papers/new", type: :view do
  before(:each) do
    assign(:paper, Paper.new(
      :session => nil,
      :program => nil,
      :exam => nil,
      :course => nil,
      :instructor => nil
    ))
  end

  it "renders new paper form" do
    render

    assert_select "form[action=?][method=?]", papers_path, "post" do

      assert_select "input[name=?]", "paper[session_id]"

      assert_select "input[name=?]", "paper[program_id]"

      assert_select "input[name=?]", "paper[exam_id]"

      assert_select "input[name=?]", "paper[course_id]"

      assert_select "input[name=?]", "paper[instructor_id]"
    end
  end
end
