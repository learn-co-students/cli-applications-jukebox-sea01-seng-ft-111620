# Add your code here
require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]



def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(song_array)
  song_array.each_with_index do |song,index|
    puts "#{index +1}. #{song}"
  end 
end 

def play(song_array)
  selected = nil 
  puts "Please enter a song name or number:"
  input = gets.strip
  song_array.each.with_index do | song, index |
    index1 = index + 1 
    if (song == input.to_s) || (index1 == input.to_i)
      selected = song
    end
  end
  if selected == nil  
    puts "Invalid input, please try again"
  else
    puts "Playing #{selected}"
  end
end

def exit_jukebox
  puts "Goodbye"
end 

def run(song_array)
  input = nil 
  while input != "exit" do
    puts "Please enter a command:"
    input = gets.strip
    
    case input
    when "list"
      list(song_array)
    when "play"
      play(song_array)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      help
    end
  end
end



