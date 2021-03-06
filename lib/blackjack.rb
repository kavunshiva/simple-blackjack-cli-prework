#require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(points)
  puts "Sorry, you hit #{points}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  card1 + card2
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h' || user_input == 's'
    card_total += deal_card if user_input == 'h'
  else
    invalid_command
  end
  card_total
end

def invalid_command
  puts "That's, like, an invalid command, man."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    #binding.pry
    display_card_total(card_total)
  end
  end_game(card_total)
end
