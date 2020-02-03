require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :description => "MyText",
      :marks => 1,
      :paper => nil
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "textarea[name=?]", "question[description]"

      assert_select "input[name=?]", "question[marks]"

      assert_select "input[name=?]", "question[paper_id]"
    end
  end
end
