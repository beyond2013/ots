require 'rails_helper'

RSpec.describe "instructors/show", type: :view do
  before(:each) do
    @instructor = assign(:instructor, Instructor.create!(
      :name => "",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Email/)
  end
end
