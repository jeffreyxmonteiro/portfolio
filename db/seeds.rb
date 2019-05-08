# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#db:setup to restart database so you dont have to keep destroying seeds


User.create!(
  email: "test@test.com",
  password: "monkey1",
  password_confirmation: "monkey1",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "monkey1",
  password_confirmation: "monkey1",
  name: "Regular User",
)

puts "1 regular user created"


3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "Blog Post Number #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lacinia viverra mauris, ac posuere ipsum dictum id. Ut vel mauris in velit auctor ornare quis ac massa. Nam non bibendum ex. Phasellus quis nunc id nunc fermentum auctor bibendum ut velit. Cras vel sem risus. Nam nibh mi, porttitor at neque id, venenatis molestie mauris. Curabitur feugiat finibus augue sit amet facilisis. Integer non sem turpis. Mauris id feugiat massa, in porta magna. Aliquam imperdiet vestibulum nisl, ac viverra massa maximus a. Quisque sed tristique lorem, sed ultricies mauris. Praesent ultrices nisi neque. Nunc eget quam ante. Nunc scelerisque mollis pulvinar. Nulla feugiat lorem id iaculis rhoncus. Cras iaculis massa a ante consectetur, sit amet vestibulum tortor lacinia.",
    topic_id: Topic.last.id
    )
end

puts "10 Blog posts created"

5.times do |skill|
  Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 20
    )
end

puts "5 skills created."

8.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio Title: #{portfolio_item}",
      subtitle: "Ruby on Rails",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lacinia viverra mauris, ac posuere ipsum dictum id.",
      main_image: "https://via.placeholder.com/600x400.jpg",
      thumb_image: "https://via.placeholder.com/350x200.jpg"
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio Title: #{portfolio_item}",
      subtitle: "Angular",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lacinia viverra mauris, ac posuere ipsum dictum id.",
      main_image: "https://via.placeholder.com/600x400.jpg",
      thumb_image: "https://via.placeholder.com/350x200.jpg"
    )
end

puts "9 portfolio items created."

3.times do |technology|
  Portfolio.last.technologies.create!(
      name: "Technology #{technology}"
    )
end

puts "3 technologies created!"
