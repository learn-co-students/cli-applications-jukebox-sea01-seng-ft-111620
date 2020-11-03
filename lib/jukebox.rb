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

def list(songs)
  count = 0
  songs.each do |counter|
    puts "#{count + 1}. #{counter}"
    count += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  if songs.include?(song_choice)
    puts "Playing #{song_choice}"
  elsif (song_choice.to_i - 1).between?(0,songs.length)
    puts "Playing #{songs[song_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  until input == "exit"
    puts "Please enter a command:"
    input = gets.strip
    if input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    elsif input == "help"
      help
    end
  end
  exit_jukebox
end
