def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.new.rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = 0
  2.times do
    card_total += deal_card()
  end
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user()
  answer = get_user_input()
  if answer == "s"
    return card_total
  elsif answer == "h"
    card_total += deal_card()
    return card_total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  card_total = initial_round()
  until card_total > 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
