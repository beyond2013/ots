require 'rails_helper'

RSpec.describe "papers/edit", type: :view do
  before(:each) do
    @paper = assign(:paper, Paper.create!(
      :session => nil,
      :program => nil,
      :exam => nil,
      :course => nil,
      :instructor => nil
    ))
  end

  it "renders the edit paper form" do
    render

    assert_select "form[action=?][method=?]", paper_path(@paper), "post" do

      assert_select "input[name=?]", "paper[session_id]"

      assert_select "input[name=?]", "paper[program_id]"

      assert_select "input[name=?]", "paper[exam_id]"

      assert_select "input[name=?]", "paper[course_id]"

      assert_select "input[name=?]", "paper[instructor_id]"
    end
  end
end
