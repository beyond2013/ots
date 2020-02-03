require 'rails_helper'

RSpec.describe "choices/index", type: :view do
  before(:each) do
    assign(:choices, [
      Choice.create!(
        :description => "MyText",
        :question => nil
      ),
      Choice.create!(
        :description => "MyText",
        :question => nil
      )
    ])
  end

  it "renders a list of choices" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
