FactoryGirl.define do
  factory :user do
    #name "Michael Hartl"
    #email "Michael@example.com"
    sequence(:name){|n| "Person #{n}"}
    sequence(:email) {|n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Leaon post"
    user
  end
end
