class Plantfacts::CLI

def start
     puts "Hi! do you like plants?[yes/no]:"
     input=gets.strip
     case input
     when "no"
        puts goodbye
     when "yes"
        puts plant
     end
end

def plant
puts "Would you like some plant fun facts?[yes/no]"
input=gets.strip
case input
when "no"
 puts goodbye
when "yes"
puts more
end
end

def more
    input_prompt = "Enter a number between 1-42 for a random plant fact, or type 'leave' to exit:"
    puts input_prompt
input = nil
    while input != "leave"
      input = gets.strip
      if input.to_i > 0 && input.to_i < facts.length + 1
        return facts[input.to_i - 1]
      elsif input == "leave"
        puts goodbye
      else
        puts "Sorry, I didn't understand that.  #{input_prompt}" 

    #"Enter a number for another fact or type 'exit' to leave." 

     end
   end
end


    def goodbye
   puts
  "Goodbye
    ,*-*.
    |   |
    |ಠ╭╮ಠ
,-. |   |
| |_|   | ,-.
`---.   |_| |
    |   .___;
    |   |
    |   | 
 ___|___|___
|___________|
 |         |
 |         |
 |_________|  "
    
end
end
