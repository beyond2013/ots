require 'rails_helper'

RSpec.describe "exams/index", type: :view do
  before(:each) do
    assign(:exams, [
      Exam.create!(
        :title => "Title",
        :marks => ""
      ),
      Exam.create!(
        :title => "Title",
        :marks => ""
      )
    ])
  end

  it "renders a list of exams" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
