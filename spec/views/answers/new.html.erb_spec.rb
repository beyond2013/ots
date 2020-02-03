require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :question => nil,
      :choice => nil
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "input[name=?]", "answer[question_id]"

      assert_select "input[name=?]", "answer[choice_id]"
    end
  end
end
