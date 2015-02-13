namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(email: "hum@asd.com",
                 password: "password",
                 password_confirmation: "password")
    99.times do |n|
      email = "hum-#{n+1}@asd.com"
      password  = "password"
      User.create!(email: email,
                   password: password,
                   password_confirmation: password)
    end
     
    users = User.all.limit(6)
    50.times do |n|
      #title = "title-#{n+1}"
      description = "description-#{n+1}"#Faker::Lorem.sentence(3)
      users.each { |user| user.posts.create!(description: description) }
      #users.each do |user|
       # user.posts.create!(description: description)
        #user.posts.create!(title: title)
      #end
    end
  end
end