require "pry"
require "colorize"

def seperator 
puts
end

class Dice
    def initialize(player)
      @player = player
      @cost = 0
      @win_amount =500
      @winnings = 500
    end
  
    def welcome
        @player.bankroll.wallet >= @cost

    end
   
    def start_game
        new_balance = @player.bankroll.minus_from_wallet(@cost)
        puts "YOUR BALANCE IS: $#{new_balance}                  "
        seperator
        seperator
      choice
    end
  
    def choice
      seperator
      seperator
      puts "............................................................................................................"
      puts "                             WELCOME TO THE ATM, PLEASE PRESS 1 THEN ENTER.                                "
      puts "............................................................................................................"
      puts "                                           | Add funds  |                                                  "
      seperator
      puts "                                              1) $500                                                        "
      puts "............................................................................................................"
      seperator
      puts "............................................................................................................"
      seperator
      seperator
@choice = gets.to_i 
      case @choice
      when 1
        # system("clear")
        puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        return
      else
        puts "                  YOURE NOT REALLY GOOD AT THIS, ARENT YOU? (hint: pick a number)                          "
        welcome
      end
      choice
      return
    end
  
end

  

  # puts "......................................................................................"
  # # puts "......................................................................................"
  # puts "....................               .....       ....              ....................."  
  # puts "..........................   ...........  ..............   ..........................."
  # puts "..........................   ...........      ..........   ..........................."
  # puts "..........................   ...........  ..............   ..........................."
  # puts "..........................   ...........       .........   ..........................."
  # puts "......................................................................................"
  # puts "......................................................................................"
  # seperator
  # puts "       A game of Soldiers and Kings. As in War, you either win, or you lose.          "
  # puts "                                     $1,500 per play                                  "  
  # seperator     
  # seperator

 