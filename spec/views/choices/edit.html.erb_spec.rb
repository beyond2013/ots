require 'rails_helper'

RSpec.describe "choices/edit", type: :view do
  before(:each) do
    @choice = assign(:choice, Choice.create!(
      :description => "MyText",
      :question => nil
    ))
  end

  it "renders the edit choice form" do
    render

    assert_select "form[action=?][method=?]", choice_path(@choice), "post" do

      assert_select "textarea[name=?]", "choice[description]"

      assert_select "input[name=?]", "choice[question_id]"
    end
  end
end
