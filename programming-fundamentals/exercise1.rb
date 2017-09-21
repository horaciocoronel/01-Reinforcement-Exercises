trains_schedule = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

# 1. Save the direction of train 111 into a variable.
train_111 = trains_schedule.select { |k, v| k[:train] == "111" }
train_111_direction = train_111[0][:direction]

# 1. Different option - Easier way.
trains_schedule[7][:direction]


# 2. Save the frequency of train 80B into a variable.
train_80b = trains_schedule.select { |k, v| k[:train] == "80B" }
train_80b_frequency = train_80b[0][:frequency_in_minutes]

# 2. Different option - Easier way.
train_80b_frequency = trains_schedule[5][:frequency_in_minutes]

# 3. Save the direction of train 610 into a variable.
trains_schedule[3][:direction]

# 4. Create an empty array. Iterate through each train and add the name of the train into the array if it travels north.
trains_going_north = []

trains_schedule.each do |x|
  if x[:direction] == "north"
    trains_going_north << x[:train]
  end
end

puts trains_going_north
# 5. Do the same thing for trains that travel east.
trains_going_east = []

trains_schedule.each do |x|
  if x[:direction] == "east"
    trains_going_east << x[:train]
  end
end

puts trains_going_east

#6. You probably just ended up rewriting some of the same code. Move this repeated code into a method that accepts a direction and a list of trains as arguments, and returns a list of just the trains that go in that direction. Call this method once for north and once for east in order to DRY up your code.
trains_going_east = []
def train_direction(direction, trains_list)
  trains_list.each do |x|
    if x[:direction] == direction
      puts x[:train]
    else
      "not This one"
    end
  end
end
puts "exercise 1.6"
train_direction("north",trains_schedule)
train_direction("east",trains_schedule)

# 7. Pick one train and add another key/value pair for the first_departure_time. For simplicity, assume the first train always leave on the hour. You can represent this hour as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm, etc.
puts "exercise 7"
trains_schedule[2][:departure] = "12"
puts trains_schedule
