require "open-uri"

BlogPost.destroy_all


5.times do |i|
post = BlogPost.create!(
  title: "The Importance of Dance in Child Development",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis, turpis ut ultricies fermentum, eros orci pretium libero, vel malesuada ligula justo eget mauris. Integer dictum neque at risus vehicula."
)

# Attach a sample image
image_url = "https://www.rollingstone.com/wp-content/uploads/2023/01/GettyImages-1204500373.jpg"
post.image.attach(io: URI.open(image_url), filename: "dance.jpg", content_type: "image/jpg")
end

puts "Sample blog post created!"