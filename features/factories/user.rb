FactoryBot.define do
  
  factory :user do
    
    sequence :email do |n|
      "user_#{n}@example.com"
    end
    
    password { ('A'..'Z').to_a.shuffle[0,3].join + ('a'..'z').to_a.shuffle[0,3].join + ('0'..'9').to_a.shuffle[0,3].join }
    password_confirmation { password }
    
  end
  
end