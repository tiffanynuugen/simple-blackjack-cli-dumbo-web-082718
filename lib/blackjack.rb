def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end
 def deal_card
  # code #deal_card here
  rand(1...11)
end
 def display_card_total
  # code #display_card_total here
def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end
 def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end
 def get_user_input
  # code #get_user_input here
  gets.chomp
end
 def end_game
  # code #end_game here
def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
 def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  initial_round_total = first_card + second_card
  display_card_total(initial_round_total)
  initial_round_total
end
 def hit?
  # code hit? here
def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    new_card = deal_card
    card_total += new_card
  end
  card_total
end

#####################################################
 def runner
  # code runner here
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
