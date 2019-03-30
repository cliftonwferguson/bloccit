# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 require 'random_data'

 Post.destroy_all
 Comment.destroy_all
 
 50.times do
 
   Post.create!(
 
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 
 100.times do
   Comment.create!(
 
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 100.times do
    Question.create!(
     title: RandomData.random_sentence,
     body: RandomData.random_paragraph,
     resolved: false
      )
    end
 
 
 puts "#{Post.count}"
 Post.find_or_create_by(title: "Seeds Assignment Title", body: "Seeds Assignment Body")
 puts "#{Post.count}"
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 
 50.times do
   Advertisements.create!(
    title: RandomData.random_word,
    copy: RandomData.random_paragraph,
    price: rand(20..30)
    )
 end
  
  advertisements = Advertisements.all