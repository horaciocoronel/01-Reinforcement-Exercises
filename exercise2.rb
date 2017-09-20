# Setting the genre variables with a movie title value
documentary = "The Ugly Truth"
drama = "The Green Line"
comedy = "Superbad"
dramedy = "Lost in Translation"

# Ask the user for genre input
puts "From 1 to 5. How much do you enjoy Documentaries?"
rate_documentary = gets.chomp.to_i
puts "From 1 to 5. How much do you enjoy Dramas?"
rate_drama = gets.chomp.to_i
puts "From 1 to 5. How much do you enjoy Comedies?"
rate_comedy = gets.chomp.to_i

if (rate_documentary <= 3) && (rate_comedy >= 4) && (rate_drama >= 4)
  puts "You should watch '#{dramedy}'. Go check it out."
elsif rate_documentary >= 4
  puts "You should watch '#{documentary}'. Go check it out."
elsif (rate_drama >= 4) && (rate_comedy <= 3)
  puts "You should watch '#{drama}'. Go check it out."
elsif (rate_comedy >= 4)
    puts "You should watch '#{comedy}'. Go check it out."
else
  puts "I'll recommend a good book for you. Try reading 'War and Peace' by Leo Tolstoy"
end

# Stretch challenge
# If they didn't rate any genre higher than 3 but they did rate one genre higher than the other two, recommend the film from that genre.

if (rate_documentary <= 3) && (rate_comedy <= 3) && (rate_drama <= 3)
  if (rate_documentary > rate_comedy) && (rate_documentary > rate_drama)
    puts "You should watch '#{documentary}'!"
  elsif (rate_drama > rate_documentary) && (rate_drama > rate_comedy)
    puts "You should watch '#{drama}!'"
  elsif (rate_comedy > rate_documentary) && (rate_comedy > rate_drama)
    puts "You should watch '#{comedy}!'"
  end
end
