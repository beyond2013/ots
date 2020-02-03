require 'rails_helper'

RSpec.describe "programs/show", type: :view do
  before(:each) do
    @program = assign(:program, Program.create!(
      :name => "Name",
      :nature => "Nature"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Nature/)
  end
end
