CHOICES = {"r" => "Rock", "p" => "Paper", "s" => "Sciccors"}
puts "Welcome to Rock, Paper, Sciccors"

def check_win(player_choice, computer_choice,outcome)
  msg = puts "Player picked #{CHOICES[player_choice]} and computer picked #{CHOICES[computer_choice]}"
  case outcome
  when "tie"
    puts "You tied"
  when "win"
    puts "You win! :)"
  when "lose"
    puts "You lose :("
  end
end

loop do
  begin
    puts "Please pick one(r, p, s):"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    outcome = "tie" 
    check_win(player_choice, computer_choice, outcome)
  elsif player_choice == "r" && computer_choice == "p"
    outcome = "lose"
    check_win(player_choice, computer_choice, outcome)
  elsif player_choice == "r" && computer_choice == "s"
    outcome = "win"
    check_win(player_choice, computer_choice, outcome)
  elsif player_choice == "p" && computer_choice == "s"
    outcome = "lose"
    check_win(player_choice, computer_choice, outcome)
  elsif player_choice == "p" && computer_choice == "r"
    outcome = "win"
    check_win(player_choice, computer_choice, outcome)
  elsif player_choice == "s" && computer_choice == "r"
    outcome = "lose"
    check_win(player_choice, computer_choice, outcome)
  elsif player_choice == "s" && computer_choice == "p"
    outcome = "win"
    check_win(player_choice, computer_choice, outcome)    
  end

  puts "Play again? (Y/N)"
  still_play = gets.chomp.downcase
  if still_play == "n"
    puts "Thanks for playing!"
    break
  end
end


