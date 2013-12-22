namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(username: "ExampleUser",
                 email: "example@railstutorial.org",
                 password: "foobar12",
                 password_confirmation: "foobar12")
    25.times do |n|
      username  = Faker::Name.username
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(username: username,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
