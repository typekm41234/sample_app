namespace :db do
  desc "Fill database with sample data"
  

  task populate: :environment do
    make_user
    make_micropost
    make_relationship
  end

  def make_user
    User.create!(name:"Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n}@railstutorial.org"
      password = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end

  def make_micropost
    users = User.all

    50.times do
      content = Faker::Lorem.sentence(5)
      users.each {|user| user.microposts.create!(content: content)}
    end
  end

  def make_relationship
    users = User.all
    user = User.first

    followed_users = users[2..50]
    followers = users[3..40]

    followed_users.each{|followed| user.follow!(followed)}
    followers.each{|follower| follower.follow!(user)}
    
  end
  
end
