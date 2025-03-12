require 'rails_helper'

RSpec.describe BlogPost, type: :model do
  it "is valid with valid attributes" do
    post = BlogPost.new(title: "First Dance Class Experience!", content: "Discover the joy of movement with our fun and engaging dance classes for kids!")
    expect(post).to be_valid
  end

  it "is invalid without a title" do
    post = BlogPost.new(content: "Content without a title")
    expect(post).not_to be_valid
  end
end
