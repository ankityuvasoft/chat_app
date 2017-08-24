password = 'pass123'
1.upto(2) do |i|
  User.create(
    email: "user-#{i}@example.com",
    password: password,
    password_confirmation: password
  )
end