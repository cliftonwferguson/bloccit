FactoryGirl.define do
  factory :vote do
     value 1
     association :user
     association :post
   end
 end
 