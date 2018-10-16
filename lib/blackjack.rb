def welcome
   puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..10)
end

def display_card_total(arg)
  puts "Your cards add up to #{arg}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(arg)
   puts "Sorry, you hit #{arg}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(total)
  prompt_user
  case get_user_input
  when "h"
    total += deal_card
  when "s"
    
  else
    invalid_command
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
