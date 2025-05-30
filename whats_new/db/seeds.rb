# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


#The last db doesnt made any sense

rassmus = User.find_or_create_by!(email: "g2caps@lec.com") do |u|
  u.first_name = "Rassmus";
  u.last_name  = "Winther";
  u.password = "123456"
  u.password_confirmation = "123456"
end

sergen = User.find_or_create_by!(email: "g2brokenblade@lec.com") do |u|
  u.first_name = "Sergen";
  u.last_name  = "Celik";
  u.password = "123456"
  u.password_confirmation = "123456"
end

rudy = User.find_or_create_by!(email: "g2skewmond@lec.com") do |u|
  u.first_name = "Rudy";
  u.last_name  = "Semaan";
  u.password = "123456"
  u.password_confirmation = "123456"
end

labros = User.find_or_create_by!(email: "g2labrov@lec.com") do |u|
  u.first_name = "Labros";
  u.last_name  = "Papoutsakis";
  u.password = "123456"
  u.password_confirmation = "123456"
end

steven = User.find_or_create_by!(email: "g2hanssama@lec.com") do |u|
  u.first_name = "Steven";
  u.last_name  = "Liv";
  u.password = "123456"
  u.password_confirmation = "123456"
end

simon = User.find_or_create_by!(email: "lrbauss@nlc.com") do |u|
  u.first_name = "Simon";   
  u.last_name  = "Hofverberg";
  u.password = "123456"
  u.password_confirmation = "123456"
end

veljko = User.find_or_create_by!(email: "lrvelja@nlc.com") do |u|
  u.first_name = "Veljko";
  u.last_name  = "Camdzic";
  u.password = "123456"
  u.password_confirmation = "123456"
end

tim = User.find_or_create_by!(email: "lrnemesis@nlc.com") do |u|
  u.first_name = "Tim";
  u.last_name  = "Lipovsek";
  u.password = "123456"
  u.password_confirmation = "123456"
end

jus = User.find_or_create_by!(email: "lrcrownie@nlc.com") do |u|
  u.first_name = "Jus";
  u.last_name  = "Marusic";
  u.password = "123456"
  u.password_confirmation = "123456"
end

carl = User.find_or_create_by!(email: "lrrekkles@nlc.com") do |u|
  u.first_name = "Carl Martin Erik";
  u.last_name = "Larsson";
  u.password = "123456"
  u.password_confirmation = "123456"
end

c1  = Chat.find_or_create_by!(sender_id: jus.id,    receiver_id: tim.id)
c2  = Chat.find_or_create_by!(sender_id: tim.id,    receiver_id: veljko.id)
c3  = Chat.find_or_create_by!(sender_id: steven.id, receiver_id: labros.id)
c4  = Chat.find_or_create_by!(sender_id: rudy.id,   receiver_id: sergen.id)
c5  = Chat.find_or_create_by!(sender_id: simon.id,  receiver_id: tim.id)
c6  = Chat.find_or_create_by!(sender_id: carl.id,   receiver_id: rassmus.id)
c7  = Chat.find_or_create_by!(sender_id: jus.id,    receiver_id: rassmus.id)
c8  = Chat.find_or_create_by!(sender_id: steven.id, receiver_id: rassmus.id)
c9  = Chat.find_or_create_by!(sender_id: veljko.id, receiver_id: rassmus.id)
c10 = Chat.find_or_create_by!(sender_id: carl.id,   receiver_id: tim.id)

Message.find_or_create_by!(chat_id: c1.id,  user_id: c1.sender_id,   body: "Who wants to play a game?")
Message.find_or_create_by!(chat_id: c1.id,  user_id: c1.receiver_id, body: "I'm in")
Message.find_or_create_by!(chat_id: c1.id,  user_id: c1.sender_id,   body: "Great, let's start!")
Message.find_or_create_by!(chat_id: c1.id,  user_id: c1.receiver_id, body: "On my way")

Message.find_or_create_by!(chat_id: c2.id,  user_id: c2.sender_id,   body: "Are you ready to lose?")
Message.find_or_create_by!(chat_id: c2.id,  user_id: c2.receiver_id, body: "Bring it on!")
Message.find_or_create_by!(chat_id: c2.id,  user_id: c2.sender_id,   body: "Let's queue up.")
Message.find_or_create_by!(chat_id: c2.id,  user_id: c2.receiver_id, body: "Queueing now")

Message.find_or_create_by!(chat_id: c3.id,  user_id: c3.sender_id,   body: "Where is the coke?")
Message.find_or_create_by!(chat_id: c3.id,  user_id: c3.receiver_id, body: "Right here, enjoy!")
Message.find_or_create_by!(chat_id: c3.id,  user_id: c3.sender_id,   body: "Thanks!")
Message.find_or_create_by!(chat_id: c3.id,  user_id: c3.receiver_id, body: "No problem")

Message.find_or_create_by!(chat_id: c4.id,  user_id: c4.sender_id,   body: "Hey Sergen!")
Message.find_or_create_by!(chat_id: c4.id,  user_id: c4.receiver_id, body: "What's up, Rudy?")
Message.find_or_create_by!(chat_id: c4.id,  user_id: c4.sender_id,   body: "All good here.")
Message.find_or_create_by!(chat_id: c4.id,  user_id: c4.receiver_id, body: "Great to hear")

Message.find_or_create_by!(chat_id: c5.id,  user_id: c5.sender_id,   body: "Yo Tim!")
Message.find_or_create_by!(chat_id: c5.id,  user_id: c5.receiver_id, body: "Hey Simon, how are you?")
Message.find_or_create_by!(chat_id: c5.id,  user_id: c5.sender_id,   body: "All good, you?")
Message.find_or_create_by!(chat_id: c5.id,  user_id: c5.receiver_id, body: "Same here")

Message.find_or_create_by!(chat_id: c6.id,  user_id: c6.sender_id,   body: "Greetings, Rassmus.")
Message.find_or_create_by!(chat_id: c6.id,  user_id: c6.receiver_id, body: "Hello Carl!")
Message.find_or_create_by!(chat_id: c6.id,  user_id: c6.sender_id,   body: "Ready for the match?")
Message.find_or_create_by!(chat_id: c6.id,  user_id: c6.receiver_id, body: "Absolutely")

Message.find_or_create_by!(chat_id: c7.id,  user_id: c7.sender_id,   body: "How have you been?")
Message.find_or_create_by!(chat_id: c7.id,  user_id: c7.receiver_id, body: "Doing great, thanks!")
Message.find_or_create_by!(chat_id: c7.id,  user_id: c7.sender_id,   body: "Let's catch up soon.")
Message.find_or_create_by!(chat_id: c7.id,  user_id: c7.receiver_id, body: "Sure thing")

Message.find_or_create_by!(chat_id: c8.id,  user_id: c8.sender_id,   body: "Hey Rassmus, got a sec?")
Message.find_or_create_by!(chat_id: c8.id,  user_id: c8.receiver_id, body: "Yes, what's up?")
Message.find_or_create_by!(chat_id: c8.id,  user_id: c8.sender_id,   body: "Check your email.")
Message.find_or_create_by!(chat_id: c8.id,  user_id: c8.receiver_id, body: "On it")

Message.find_or_create_by!(chat_id: c9.id,  user_id: c9.sender_id,   body: "Veljko here.")
Message.find_or_create_by!(chat_id: c9.id,  user_id: c9.receiver_id, body: "Hi Veljko!")
Message.find_or_create_by!(chat_id: c9.id,  user_id: c9.sender_id,   body: "Ready for tonight?")
Message.find_or_create_by!(chat_id: c9.id,  user_id: c9.receiver_id, body: "You bet")

Message.find_or_create_by!(chat_id: c10.id, user_id: c10.sender_id, body: "Carl speaking.")
Message.find_or_create_by!(chat_id: c10.id, user_id: c10.receiver_id, body: "Tim here.")
Message.find_or_create_by!(chat_id: c10.id, user_id: c10.sender_id, body: "Game starts in 5.")
Message.find_or_create_by!(chat_id: c10.id, user_id: c10.receiver_id, body: "Roger that.")



