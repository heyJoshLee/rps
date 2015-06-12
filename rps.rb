CHOICES = {r: "Rock", p: "Paper", s: "Sciccors"}

puts "Welcome to Rock, Paper, Sciccors"

def display_winning_msg()

end


loop do

  begin
    puts "Please pick on (r, p, s)"
    player.choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player _choices)






end