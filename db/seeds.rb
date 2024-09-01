10.times do
  Post.create(
  title: Faker::Lorem.sentence(word_count: 2),
  content: Faker::Lorem.sentence,
  premium: [true, false].sample
)
end