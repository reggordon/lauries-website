require 'rails_helper'

RSpec.describe "dance_classes/show", type: :view do
  before(:each) do
    assign(:dance_class, DanceClass.create!(
      name: "Name",
      description: "MyText",
      schedule: "Schedule"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Schedule/)
  end
end
