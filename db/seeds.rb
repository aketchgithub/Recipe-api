require 'faker'

# Seed categories

puts "📃 Seeding data..."

10.times do
  Category.create(
    name: Faker::Food.dish,
    description: Faker::Lorem.paragraph_by_chars(number: 100, supplemental: false)
  )
end

# Seed users
10.times do
  User.create(
    username: Faker::Internet.username(specifier: 5..8),
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
end

# Seed recipes
50.times do
  Recipe.create(
    title: Faker::Food.dish,
    instructions: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false),
    ingredients: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false),
    prep_time: Faker::Number.between(from: 5, to: 120),
    user_id: Faker::Number.between(from: 1, to: 10),
    category_id: Faker::Number.between(from: 1, to: 10)
  )
end

# Seed reviews
100.times do
  Review.create(
    user_id: Faker::Number.between(from: 1, to: 10),
    recipe_id: Faker::Number.between(from: 1, to: 50),
    rating: Faker::Number.between(from: 1, to: 5)
  )
end

puts "✅ Done seeding" 
