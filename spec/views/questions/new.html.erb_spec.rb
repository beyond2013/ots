require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :description => "MyText",
      :marks => 1,
      :paper => nil
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "textarea[name=?]", "question[description]"

      assert_select "input[name=?]", "question[marks]"

      assert_select "input[name=?]", "question[paper_id]"
    end
  end
end
