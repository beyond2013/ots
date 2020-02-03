require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :description => "MyText",
        :marks => 2,
        :paper => nil
      ),
      Question.create!(
        :description => "MyText",
        :marks => 2,
        :paper => nil
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
