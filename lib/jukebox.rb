# Add your code here
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

def play (songs)
  menu = {}
  
  songs.each_with_index do |song_name, i| 
    menu[i+1] = song_name
  end
  
  puts "Please enter a song name or number:"
  
  while choice = gets.strip
    if menu.has_key?(choice.to_i) 
      song_name = menu[choice.to_i]
      puts "Playing #{song_name}"
      choice
      # break
    elsif menu.has_value?(choice)
      song_name = choice
      puts "Playing #{song_name}"
      choice
      # break
    else
      puts "Invalid input, please try again"
    end
    puts "Please enter a song name or number:"
  end 
  # returns an error when given a number that does not correspond to a song' do
  #       allow(self).to receive(:gets).and_return("12323")
  #       expect( $stdout ).to receive(:puts).with(/Please enter a song name or number:/)
  #       expect( $stdout ).to receive(:puts).with(/Invalid input, please try again/)
  #       play(songs)
  #     end

  #     it 'returns an error when given a name that does not correspond to an existing song' do
end 
 

def list (songs)
  songs.each_with_index{|song, i| puts "#{i + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
  puts "Please enter a command:"
  # # **version 1 **
  # while action = gets.strip
  #   if action == "exit"
  #     exit_jukebox
  #     break
  #   elsif action == "list"
  #     list(songs)
  #   elsif action == "play"
  #     play(songs)
  #   elsif action == "help"
  #     help
  #   else
  #     puts "Please enter a valid choice."
  #   end
  #   action = gets.strip
  # end
    # **version 2 **
  while action = gets.strip
    unless action == "exit"
      case action
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      end
    else
      exit_jukebox
      break
    end
    puts "Please enter a command:"
  end
end
