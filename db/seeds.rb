# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "Blog Post Number #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lacinia viverra mauris, ac posuere ipsum dictum id. Ut vel mauris in velit auctor ornare quis ac massa. Nam non bibendum ex. Phasellus quis nunc id nunc fermentum auctor bibendum ut velit. Cras vel sem risus. Nam nibh mi, porttitor at neque id, venenatis molestie mauris. Curabitur feugiat finibus augue sit amet facilisis. Integer non sem turpis. Mauris id feugiat massa, in porta magna. Aliquam imperdiet vestibulum nisl, ac viverra massa maximus a. Quisque sed tristique lorem, sed ultricies mauris. Praesent ultrices nisi neque. Nunc eget quam ante. Nunc scelerisque mollis pulvinar. Nulla feugiat lorem id iaculis rhoncus. Cras iaculis massa a ante consectetur, sit amet vestibulum tortor lacinia."
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

9.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio Title: #{portfolio_item}",
      subtitle: "My great service",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lacinia viverra mauris, ac posuere ipsum dictum id.",
      main_image: "https://via.placeholder.com/600x400.jpg",
      thumb_image: "https://via.placeholder.com/350x200.jpg"
    )
end

puts "9 portfolio items created."
