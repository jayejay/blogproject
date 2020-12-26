# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seeding...'

class PostCreator
  attr_accessor :category, :user

  def initialize(category:, user:)
    @category = category
    @user = user
  end

  def create_posts
    1..5.times do |index|
      p = Post.new
      p.title = "Post #{index}"
      p.content = 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'
      p.category = category
      p.active = true
      p.image.url = '/test/'
      p.user = User.first
      p.save!
      puts "created #{index + 1}/5 Posts"
    end
  end
end

categories = %w[Gaming Sports Nutrition]

categories.each do |category|
  c = Category.new(name: category)
  c.background_color = '#80D8FF'
  c.title_color = 'red'
  c.save!
end

user = User.new
user.first_name = 'Julian'
user.nick_name = 'Jay'
user.last_name = 'Ice'
user.admin = true
user.email = 'julian@ice.com'
user.password = 'asdfgh123'
user.save!

Category.all.each_with_index do |category, index|
  puts "round #{index + 1} of posts creating"
  PostCreator.new(category: category, user: user).create_posts
end
