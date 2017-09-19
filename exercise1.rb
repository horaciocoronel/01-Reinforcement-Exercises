# Setting the genre variables with a movie title value
documentary = "The Ugly Truth"
drama = "The Green Line"
comedy = "Superbad"
dramedy = "Lost in Translation"

# Ask the user for genre input
puts "Do you enjoy Documentaries?"
user_documentary = gets.chomp.downcase
puts "Do you enjoy Dramas?"
user_drama = gets.chomp.downcase
puts "Do you enjoy Comedies?"
user_comedy = gets.chomp.downcase

if (user_documentary == "no") && (user_drama == "no") && (user_comedy == "no")
    puts "I'll recommend a good book for you. Try reading 'War and Peace' by Leo Tolstoy"
else
  # Goes Next
  if (user_drama == "yes") && (user_comedy == "yes")
      puts "If you like Dramedies you will enjoy '#{dramedy}'. Check it out."
  end

  if user_documentary == "yes"
      puts "If you like Documentaries you will enjoy '#{documentary}'. Check it out."
  end

  if user_drama == "yes" && user_comedy == "no"
        puts "If you like Dramas you will enjoy '#{drama}'. Check it out."
  end
  if user_comedy == "yes" && user_drama == "no"
        puts "If you like Comedies you will enjoy '#{comedy}'. Check it out."
  end
end
