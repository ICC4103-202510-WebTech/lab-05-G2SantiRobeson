# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create!(
  email: "g2caps@lec.com",
  first_name: "Rassmus",
  last_name: "Winther"
)

User.create!(
  email: "g2brokenblade@lec.com",
  first_name: "Sergen",
  last_name: "Celik"
)

User.create!(
  email: "g2skewmond@lec.com",
  first_name: "Rudy",
  last_name: "Semaan"
)

User.create!(
  email: "g2labrov@lec.com",
  first_name: "Labros",
  last_name: "Papoutsakis"
)

User.create!(
  email: "g2hanssama@lec.com",
  first_name: "Steven",
  last_name: "Liv"
)

User.create!(
  email: "lrbauss@nlc.com",
  first_name: "Simon",
  last_name: "Hofverberg"
)

User.create!(
  email: "lrvelja@nlc.com",
  first_name: "Veljko",
  last_name: "Camdzic"
)

User.create!(
  email: "lrnemesis@nlc.com",
  first_name: "Tim",
  last_name: "Lipovsek"
)

User.create!(
  email: "lrcrownie@nlc.com",
  first_name: "Jus",
  last_name: "Marusic"
)

User.create!(
  email: "lrrekkles@nlc.com",
  first_name: "Carl Martin Erik",
  last_name: "Larsson"
)

#-------------------------------------------------------------------

Chat.create!(
  sender_id: User.find_by(first_name: "Jus").id,
  receiver_id: User.find_by(first_name: "Tim").id
)

Chat.create!(
  sender_id: User.find_by(first_name: "Tim").id,
  receiver_id: User.find_by(first_name: "Veljko").id
)

Chat.create!(
  sender_id: User.find_by(first_name: "Steven").id,
  receiver_id: User.find_by(first_name: "Labros").id
)

Chat.create!(
  sender_id: User.find_by(first_name: "Rudy").id,
  receiver_id: User.find_by(first_name: "Sergen").id
)

Chat.create!(
  sender_id: User.find_by(first_name: "Simon").id,
  receiver_id: User.find_by(first_name: "Tim").id
)

Chat.create!(
  sender_id: User.find_by(first_name: "Carl Martin Erik").id,
  receiver_id: User.find_by(first_name: "Rassmus").id
)

Chat.create!(
  sender_id: User.find_by(first_name: "Jus").id,
  receiver_id: User.find_by(first_name: "Rassmus").id
)

Chat.create!(
  sender_id: User.find_by(first_name: "Steven").id,
  receiver_id: User.find_by(first_name: "Rassmus").id
)

Chat.create!(
  sender_id: User.find_by(first_name: "Veljko").id,
  receiver_id: User.find_by(first_name: "Rassmus").id
)

Chat.create!(
  sender_id: User.find_by(first_name: "Carl Martin Erik").id,
  receiver_id: User.find_by(first_name: "Tim").id
)

#-------------------------------------------------------------------

Message.create!(
    chat_id: Chat.first.id, 
    user_id: User.first.id, 
    body: "Who wants to play a game?"
)

Message.create!(
    chat_id: Chat.first.id, 
    user_id: User.second.id,
    body: "I'm in"
)

Message.create!(
    chat_id: Chat.second.id, 
    user_id: User.third.id, 
    body: "Are you ready to lose?"
)

Message.create!(
    chat_id: Chat.second.id, 
    user_id: User.second.id, 
    body: "I'm already in queue"
)

Message.create!(
    chat_id: Chat.third.id, 
    user_id: User.first.id, 
    body: "Where is the coke"
)

Message.create!(
    chat_id: Chat.third.id, 
    user_id: User.third.id, 
    body: "Easy"
)

Message.create!(
    chat_id: Chat.first.id, 
    user_id: User.first.id, 
    body: "Thaks"
)

Message.create!(
    chat_id: Chat.second.id, 
    user_id: User.second.id, 
    body: "Take a look to the roles in the game."
)

Message.create!(
    chat_id: Chat.third.id, 
    user_id: User.third.id, 
    body: "They are ok"
)

Message.create!(
    chat_id: Chat.first.id, 
    user_id: User.second.id, 
    body: "Nice, we got this"
)
