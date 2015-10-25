FactoryGirl.define do
  
  factory :category do
    sequence(:name){|n| "Category #{n}"}
  end

  factory :status do
    sequence(:name) {|n| "Status #{n}"}
    sequence(:status_type) {|n| "Type #{n}"}
  end

  factory :account do
    sequence(:name) {|n| "Account #{n}"}
  end

  factory :descriptor do
    sequence(:name){|n| "Descriptor #{n}"}
  end

  factory :sub_category do
    sequence(:name){|n| "Sub Category #{n}"}
    category
  end

  factory :user do
  	sequence(:email){|n| "johnDue#{n}@example.com"}
  	sequence(:password){|n| "password#{n}"}
  	sequence(:first_name){|n| "Jhon#{n}"}
  	sequence(:last_name){|n| "Due#{n}"}
  	sequence(:address){|n| "Street #{n}"}
  	sequence(:tel){|n| "#{n}858"}
  	sequence(:mobile){|n| "#{n}963317392"}
  	sequence(:contact_email){|n| "johnDueContact#{n}@example.com"}
  	sequence(:facebook){|n|"https://www.facebook.com/#{n}"}
  	sequence(:twitter){|n|"https://www.twitter.com/#{n}"}
  	sequence(:instagram){|n|"https://www.instagram.com/#{n}"}
  	sequence(:photo_file_name){|n| "C:/test:/#{n}"}
    
  	sequence(:ratings_count){|n|}
  	sequence(:ratings_sum){|n| (n*6)}
  end

  factory :asset do
  	user
  	category
  	sub_category
  	status
  end

  factory :asset_data do
    asset
    descriptor
    sequence(:descriptor_value){|n| "Descriptor Value #{n}"}
    sequence(:photo_file_name){|n| "C:/test:/#{n}"}
    
  end

  factory :offer do
   association :from , factory: :user
   association :to , factory: :user
   status
  end

  factory :offer_asset do
    offer
    asset
  end

  factory :review do
   association :from , factory: :user
   association :to , factory: :user
   asset
   sequence(:content){|n| "Content #{n}"}
  end


end