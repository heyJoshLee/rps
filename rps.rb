CHOICES = {"r" => "Rock", "p" => "Paper", "s" => "Sciccors"}

puts "Welcome to Rock, Paper, Sciccors"

loop do
  begin
    puts "Please pick one(r, p, s):"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  puts "Your choice is => #{player_choice}"
end


