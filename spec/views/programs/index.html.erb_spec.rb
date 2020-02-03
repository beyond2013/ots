require 'rails_helper'

RSpec.describe "programs/index", type: :view do
  before(:each) do
    assign(:programs, [
      Program.create!(
        :name => "Name",
        :nature => "Nature"
      ),
      Program.create!(
        :name => "Name",
        :nature => "Nature"
      )
    ])
  end

  it "renders a list of programs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Nature".to_s, :count => 2
  end
end
