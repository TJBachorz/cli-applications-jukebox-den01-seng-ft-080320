require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  array.each_with_index { 
    |song, index| puts "#{index + 1}. #{song}" 
  }
end

'''def list(array)
  index = 0 
  while index < array.length do
    puts "#{index + 1}. #{songs[index]}"
  end
end'''

def play(array)
  puts "Please enter a song name or number:"
  user_selection = gets.strip
  binding.pry
  if array.include?(user_selection)
    binding.pry
    puts "Playing #{user_selection}"
  elsif user_selection.to_i === (1..array.length)
    puts "Playing #{array[user_selection.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end