require "pry"

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
  songs.each.with_index(1) do | element, index |
    puts "#{index}. #{element}"
  end
end

def play(songs)
  selected_song = ""
  puts "Please enter a song name or number:"
  input = gets.strip
  
  songs.each.with_index(1) do | song, index |
    if (song == input.to_s) || (index == input.to_i)
      
      selected_song = song
    end
  end
  
  if selected_song == ""
    puts "Invalid input, please try again"
  else
    puts "Playing #{selected_song}"
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  while input != "exit" do
    puts "Please enter a command:"
    input = gets.strip
    
    case input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      help
    end
  end
end
