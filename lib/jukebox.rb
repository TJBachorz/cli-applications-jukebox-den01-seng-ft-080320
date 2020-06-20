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

def play(array)
  puts "Please enter a song name or number:"
  user_selection = gets.strip
  if array.include?(user_selection)
    puts "Playing #{user_selection}"
  elsif (1..array.length) === user_selection.to_i
    puts "Playing #{array[user_selection.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  while true do
    puts "Please enter a command:"
    command = gets.strip
    if command == 'help'
      help
    elsif command == 'play'
      play(array)
    elsif command == 'list'
      list(array)
    elsif command == 'exit'
      exit_jukebox
      break
    else
      puts "Please enter a valid command. Type 'help' for assistance."
    end
  end
end
