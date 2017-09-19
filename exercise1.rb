# Setting the genre variables with a movie title value
documentary = "The Ugly Truth"
drama = "The Green Line"
comedy = "Superbad"
dramedy = "Lost in Translation"

# Ask the user for genre input
puts "Do you enjoy Documentaries?"
user_documentary = gets.chomp.downcase
  if user_documentary == "yes" || user_documentary == "y"
    puts "If you like Documentaries you will enjoy '#{documentary}'. Check it out."
  elsif user_documentary == "no" || user_documentary == "n"
  end

puts "Do you enjoy Dramas?"
user_drama = gets.chomp.downcase
  if user_drama == "yes" || user_drama == "y"
    puts "If you like Dramas you will enjoy '#{drama}'. Check it out."
  elsif user_drama == "no" || user_drama == "n"
  end
puts "Do you enjoy Comedies?"
user_comedy = gets.chomp.downcase
  if user_comedy == "yes" || user_comedy == "y"
    puts "If you like Comedies you will enjoy '#{comedy}'. Check it out."
  elsif user_comedy == "no" || user_comedy == "n"
  end
if user_documentary == "no" || user_documentary == "n" && user_drama == "no" || user_drama == "n" || user_comedy == "no" || user_comedy == "n"
    puts "I'll recommend a good book for you. Try reading 'War and Peace' by Leo Tolstoy"
  end
