# require_relative "casino"
def seperator 
puts
end

class Dice
    def initialize(player)
      @player = player
      @cost = 100
      @win_amt = 200
      @winnings = 0
    end
  
    def welcome
        if @player.bankroll.wallet >= @cost
puts "......................................................................................"
puts "......................................................................................"
puts "....................               .....        ....            ......................"  
puts "..........................   ...........  ..............   ..........................."
puts "..........................   ...........      ..........   ..........................."
puts "..........................   ...........  ..............   ..........................."
puts "..........................   ...........       .........   ..........................."
puts "......................................................................................"
puts "......................................................................................"
seperator
puts"Cost for initial play is $100, would you like to try your luck? (y/n)"
        case gets.strip
        when "y"
          new_balance = @player.bankroll.minus_from_wallet(@cost)
          puts "YOUR BALANCE IS: $#{new_balance}"
        else
          return
        end
      else
        puts "BETCH, YOU IS BROKE. SO NAW"
        exit
      end
    end
    def start_game
      puts "WELCOME TO THE THUNDAH' DOME!!, #{@player.name}!"
      puts
      puts 
      puts
      choice
    end
  
    def choice
      puts "MAKE YOUR CHOICE, PEASANT."
      seperator
      puts "1) ROCK!"
      seperator
      puts "2) PAPER!!"
      seperator
      puts "3) SCISSORS!!!"
      seperator
      puts "4) Exit"
      seperator
      @choice = gets.to_i
      case @choice
      when 1
        puts "YOU CHOSE- ROCK!"
        rock_case
      when 2
        puts "YOU CHOSE-- PAPER!!"
        paper_case
      when 3
        puts "YOU CHOSE--- SCISSORS!!!"
        scissors_case
      when 4
        puts "BYE FELICIA!"
        return
    
      else
        puts "YOURE REALLY GOOD AT THIS, ARENT YOU? (hint: pick a number)"
        start_game
      end
      choice
    end
  
    def computer_choice
        random = rand(1..3)
    end
  
    def rock_case
      #computer_choice
      case computer_choice
      when 1
        puts "COMPUTER CHOSE- ROCK!"
        puts "TIE!"
        puts "TRY AGAIN."
      when 2
        puts "COMPUTER CHOSE-- PAPER!!"
        puts "YOU LOST! OUCH!"
      else
        puts "COMPUTER CHOSE--- SCISSORS!!!"
        puts "YOU WON!!"
        puts "YOUR WINNINGS: #{@winnings += @win_amt}"
        puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
      end  
    end
  
    def paper_case
        #computer_choice
        case computer_choice
        when 1
          puts "COMPUTER CHOSE- ROCK!"
          puts "YOU WON!!"
          puts "YOUR WINNINGS: #{@winnings += @win_amt}"
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"      
        when 2
          puts "COMPUTER CHOSE-- PAPER!!"
          puts "TIE!"
          puts "TRY AGAIN."
        else
          puts "COMPUTER CHOSE--- SCISSORS!!!"
          puts "YOU LOST! OUCH!"
        end  
      end
  
    def scissors_case
        #computer_choice
        case computer_choice
        when 1
          puts "COMPUTER CHOSE- ROCK!"
          puts "YOU LOST! OUCH!"
          
        when 2
          puts "COMPUTER CHOSE-- PAPER!!"
          puts "YOU WON!!"
          puts "YOUR WINNINGS: #{@winnings += @win_amt}"
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        else
          puts "COMPUTER CHOSE--- SCISSORS!!!"
          puts "TIE!"
          puts "TRY AGAIN."
        end  
      end
  
  end
  



 