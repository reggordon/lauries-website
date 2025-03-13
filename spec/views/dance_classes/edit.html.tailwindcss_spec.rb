require 'rails_helper'

RSpec.describe "dance_classes/edit", type: :view do
  let(:dance_class) {
    DanceClass.create!(
      name: "MyString",
      description: "MyText",
      schedule: "MyString"
    )
  }

  before(:each) do
    assign(:dance_class, dance_class)
  end

  it "renders the edit dance_class form" do
    render

    assert_select "form[action=?][method=?]", dance_class_path(dance_class), "post" do

      assert_select "input[name=?]", "dance_class[name]"

      assert_select "textarea[name=?]", "dance_class[description]"

      assert_select "input[name=?]", "dance_class[schedule]"
    end
  end
end
