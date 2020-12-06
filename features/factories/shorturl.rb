FactoryBot.define do
  
  factory :shorturl do
    
    shorturl { ('A'..'Z').to_a.shuffle[0,3].join + ('a'..'z').to_a.shuffle[0,3].join + ('0'..'9').to_a.shuffle[0,3].join }
  	sequence :targeturl do |n|
  		"https://www.example#{n}.com"
    end
    user { create(:user) }
	
  end
  
end