require 'rails_helper'

RSpec.describe "dance_classes/new", type: :view do
  before(:each) do
    assign(:dance_class, DanceClass.new(
      name: "MyString",
      description: "MyText",
      schedule: "MyString"
    ))
  end

  it "renders new dance_class form" do
    render

    assert_select "form[action=?][method=?]", dance_classes_path, "post" do

      assert_select "input[name=?]", "dance_class[name]"

      assert_select "textarea[name=?]", "dance_class[description]"

      assert_select "input[name=?]", "dance_class[schedule]"
    end
  end
end
