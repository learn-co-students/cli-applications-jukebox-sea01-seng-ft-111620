
def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

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

def list(songs) 
  songs.each_with_index do |item, index| 
   puts "#{index + 1}. #{item}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip 
  
  if songs.include?(user_input)
    puts "Playing #{user_input}"
  elsif songs[user_input.to_i - 1] && user_input.to_i != 0 
    puts "Playing #{songs[user_input.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run(songs)
  puts "Please enter a command:"
  user_input = ""
  until user_input === "exit" do 
    
    user_input = gets.strip 
  
    case user_input 
      when "help"
        help 
      when "list"
        list(songs)
      when "play"
       play(songs)
      when "exit"
        exit_jukebox
    end 
  end 
end 
  
  
  


  