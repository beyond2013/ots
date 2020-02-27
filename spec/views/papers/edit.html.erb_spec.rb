require 'rails_helper'

RSpec.describe "papers/edit", type: :view do
  before(:each) do
    @paper = assign(:paper, Paper.create!(
      :program_sessions => nil,
      :course_instructors => nil,
      :exam => nil
    ))
  end

  it "renders the edit paper form" do
    render

    assert_select "form[action=?][method=?]", paper_path(@paper), "post" do

      assert_select "input[name=?]", "paper[program_sessions_id]"

      assert_select "input[name=?]", "paper[course_instructors_id]"

      assert_select "input[name=?]", "paper[exam_id]"
    end
  end
end
