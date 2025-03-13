require 'rails_helper'

RSpec.describe "dance_classes/index", type: :view do
  before(:each) do
    assign(:dance_classes, [
      DanceClass.create!(
        name: "Name",
        description: "MyText",
        schedule: "Schedule"
      ),
      DanceClass.create!(
        name: "Name",
        description: "MyText",
        schedule: "Schedule"
      )
    ])
  end

  it "renders a list of dance_classes" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Schedule".to_s), count: 2
  end
end
