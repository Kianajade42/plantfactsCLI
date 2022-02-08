# require_relative '../plantfacts'
# require_relative 'scraper'
class Plantfacts::CLI


def start
   puts "Welcome! What is your name?"
   name = gets.chomp
     puts "Hi #{name}!what do you want to learn about? 
   Plants,
   History,
   Life"
     input=gets.strip 
   case input
     when "Plants"
        puts plant
     when "History"
        puts history
     when "Life"
      puts life 
     end
end

def history
   puts "Would you like some history fun facts?
      [yes/no]"
input=gets.strip
case input
when "no"
 puts start
when "yes"
puts historymore
end
end

def life
   puts "Would you like some life fun facts?
      [yes/no]"
input=gets.strip
case input
when "no"
 puts start
when "yes"
puts lifemore
end
end


def plant
puts "Would you like some plant fun facts?
      [yes/no]"
input=gets.strip
case input
when "no"
 puts start
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
def historymore
    input_prompt = "\n\n Enter a number between 1-52 for a random history fact, or type 'leave' to exit: \n\n"
input = nil
    while true
      puts input_prompt
      input = gets.strip
      if input.to_i > 0 && input.to_i < facts.length + 1
       puts historyfacts[input.to_i - 1]
      elsif input == "leave"
        puts goodbye
        return
      else
        puts "Sorry, I didn't understand that." 
   

     end
   end
end
def lifemore
    input_prompt = "\n\n Enter a number between 1-52 for a random life fact, or type 'leave' to exit: \n\n"
input = nil
    while true
      puts input_prompt
      input = gets.strip
      if input.to_i > 0 && input.to_i < facts.length + 1
       puts lifefacts[input.to_i - 1]
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
