require 'rails_helper'

RSpec.describe "exams/new", type: :view do
  before(:each) do
    assign(:exam, Exam.new(
      :title => "MyString",
      :marks => ""
    ))
  end

  it "renders new exam form" do
    render

    assert_select "form[action=?][method=?]", exams_path, "post" do

      assert_select "input[name=?]", "exam[title]"

      assert_select "input[name=?]", "exam[marks]"
    end
  end
end
