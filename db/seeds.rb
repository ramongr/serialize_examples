# frozen_string_literal: true

10.times do
  user = User.create(
    name: Faker::Name.name_with_middle,
    email: Faker::Internet.email
  )
  100.times do
    Post.create(user: user, title: Faker::Lorem.word.titleize, text: Faker::Lorem.paragraphs.join('\n'))
  end
end
