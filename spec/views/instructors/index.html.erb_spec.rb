require 'rails_helper'

RSpec.describe "instructors/index", type: :view do
  before(:each) do
    assign(:instructors, [
      Instructor.create!(
        :name => "",
        :email => "Email"
      ),
      Instructor.create!(
        :name => "",
        :email => "Email"
      )
    ])
  end

  it "renders a list of instructors" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
