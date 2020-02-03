require 'rails_helper'

RSpec.describe "papers/show", type: :view do
  before(:each) do
    @paper = assign(:paper, Paper.create!(
      :session => nil,
      :program => nil,
      :exam => nil,
      :course => nil,
      :instructor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
