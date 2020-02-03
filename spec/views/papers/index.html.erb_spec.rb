require 'rails_helper'

RSpec.describe "papers/index", type: :view do
  before(:each) do
    assign(:papers, [
      Paper.create!(
        :session => nil,
        :program => nil,
        :exam => nil,
        :course => nil,
        :instructor => nil
      ),
      Paper.create!(
        :session => nil,
        :program => nil,
        :exam => nil,
        :course => nil,
        :instructor => nil
      )
    ])
  end

  it "renders a list of papers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
