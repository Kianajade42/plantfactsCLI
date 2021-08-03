require_relative '../plantfacts'
require_relative 'scraper'
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
    input_prompt = "\n\n Enter a number between 1-42 for a random plant fact, or type 'leave' to exit: \n\n"
input = nil
    while true
      puts input_prompt
      input = gets.strip
      if input.to_i > 0 && input.to_i < facts.length + 1
       puts facts[input.to_i - 1]
      elsif input == "leave"
        puts goodbye
        return
      else
        puts "Sorry, I didn't understand that." 
   

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
