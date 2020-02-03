require 'rails_helper'

RSpec.describe "choices/show", type: :view do
  before(:each) do
    @choice = assign(:choice, Choice.create!(
      :description => "MyText",
      :question => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
