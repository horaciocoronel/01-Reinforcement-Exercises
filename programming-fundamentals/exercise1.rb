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

# 2. Save the frequency of train 80B into a variable.
train_80b = trains_schedule.select { |k, v| k[:train] == "80B" }
train_80b_frequency = train_80b[0][:frequency_in_minutes]

# 3. Save the direction of train 610 into a variable.
