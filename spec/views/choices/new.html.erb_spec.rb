require 'rails_helper'

RSpec.describe "choices/new", type: :view do
  before(:each) do
    assign(:choice, Choice.new(
      :description => "MyText",
      :question => nil
    ))
  end

  it "renders new choice form" do
    render

    assert_select "form[action=?][method=?]", choices_path, "post" do

      assert_select "textarea[name=?]", "choice[description]"

      assert_select "input[name=?]", "choice[question_id]"
    end
  end
end
