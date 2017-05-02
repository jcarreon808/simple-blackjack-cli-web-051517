def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer= gets.chomp
  answer
end

def end_game(total)
puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
end

def hit?(total)
  prompt_user
  if get_user_input === 'h'
    total+=deal_card
  end
  total

end

def invalid_command
  puts 'invalid'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
 card_total = initial_round
 while card_total < 21
   card_total = hit?(card_total)
   card_total = display_card_total(card_total)
 end
 end_game(card_total)
end
