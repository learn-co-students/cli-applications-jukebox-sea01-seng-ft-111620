require 'pry'
def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(songs)
  songs.each_with_index do |name, index|
    puts "#{index+1}. #{name}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.strip

  if !songs[user_choice.to_i] 
    puts "Invalid input, please try again"
  elsif user_choice == user_choice.to_i.to_s 
    puts "Playing #{songs[user_choice.to_i - 1]}"
  elsif songs.include?(user_choice)
    puts "Playing #{user_choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  user = 
  until user == "exit" 
  puts "Please enter a command:"
  user = gets.strip
    case user
    when "list" 
      list(songs)
    when "play" 
      play(songs) 
    when "help"
      help
    else
      exit_jukebox
    end  
  end
end 
  