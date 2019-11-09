
def separator  
  puts
end

class Dice
  def initialize(player)
    @player = player
  end
  def start_game()
    puts
    menu
  end
end

def menu  
  separator
  puts "......................................................."
  puts "....................               ...................."
  puts "..........................   .........................."
  puts "..........................   .........................."
  puts "..........................   .........................."
  puts "..........................   .........................."
  puts "......................................................." 
  separator 
  answers = ["Dealer says: ...Uh, can you go within 200 yards of a school?" , "Dealer says: BEHOLD! MY POWER!" , "Dealer says: WHAT? Did you expect Decaprio?", "Dealer: ...Uh, I think you're looking for the wrong 8ball", "Dealer says: Why are you like this?", "Dealer SAYS: Alright--look kid-- I don't get paid enough for this.", "Dealer says: Shouldn't you be on Dr Phil or something?",]
  print answers.sample 
  separator
  separator
  separator
  puts "1) Step up to the table."
  separator
  puts "2) Order a drink."
  separator
  puts "3) flee the table."
  separator 
  menu_options
end

def menu_options
  user_input = gets.strip.to_i 
  case user_input
  when 1  
    roll  "this should inniate the game."
  when 2 
    print "*pounds a shot"
  when 3
    exit
  else #Response to a miskeyed stoke or not an existing option
     answers = ["Dealer: Nah, try typing that again you fat fingered betch.", "Dealer: You know how to type, right? Try again.", "Dealer: I bet someone gets a tax write-off because of you. Try again.", "Dealer: Why are you like this? Try again.", "Dealer: Alright--look kid-- I don't get paid enough for this. Try again." , "Dealer: Shouldn't you be on Dr Phil or something?"]
     print answers.sample
    menu
    separator
    menu_options
    tet_game
  end
end

class Tet_game
  def initialize(sides)
    @sides = sides
  end

  def generate_die_roll
    rand(@sides) + 1
  end

  def roll(number=1)
    roll_array = []
    number.times do
      roll_array << generate_die_roll
    end
    total = 0
    roll_array.each do |roll|
      new_total = total + roll
      total = new_total
    end
    total
  end
end  








# def tet_game ()
#   puts "Welcome to the Tet-Table."
#   roll
#   end
  
#   def roll
#     @die1 = 1 + rand(6)
#     @die2 = 1 + rand(6) 
#   end
  
#   def show_dice
#     print "Die1: ", @die1, " Die2:", @die2
#   end
  
#   def show_sum
#     print "Sum of dice is ", @die1 + @die2, ".\n"
#   end 

#  d = Dice.new
#  d.show_dice
#  puts
#  d.show_sum