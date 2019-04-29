User.create(
  username: "johndoe",
  email: "john@doe.com",
  password_digest: "123456"
)

User.create(
  username: "janedoe",
  email: "jane@doe.com",
  password_digest: "123456"
)

2.times do |post|
  Post.create!(
    title: "Test Title",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur mollis nec ex vitae condimentum. Nulla eu lectus lectus. Nulla id nunc porta lorem venenatis rhoncus mattis in dolor. In id posuere enim. Nulla egestas erat vel dui laoreet faucibus. In volutpat lobortis tempus.",
    user_id: User.first.id
  )
end

2.times do |post|
  Post.create!(
    title: "Test Title",
    body: "This is just a test body text",
    user_id: User.last.id
  )
end

Comment.create(
  body: "Aliquam eget ipsum ligula. Morbi interdum turpis eu mauris laoreet consequat",
  user_id: User.first.id,
  post_id: Post.first.id
)

Comment.create(
  body: "Aliquam eget ipsum ligula. Morbi interdum turpis eu mauris laoreet consequat",
  user_id: User.last.id,
  post_id: Post.first.id
)

puts "2 users, 2 posts and 2 comments added!"
