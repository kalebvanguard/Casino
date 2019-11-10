def seperator 
puts
end

class Dice
    def initialize(player)
      @player = player
      @cost = 1500
      @win_amt = 1000
      @winnings = 0
    end
  
    def welcome
        @player.bankroll.wallet >= @cost
puts "......................................................................................"
puts "......................................................................................"
puts "....................               .....       ....              ....................."  
puts "..........................   ...........  ..............   ..........................."
puts "..........................   ...........      ..........   ..........................."
puts "..........................   ...........  ..............   ..........................."
puts "..........................   ...........       .........   ..........................."
puts "......................................................................................"
puts "......................................................................................"
seperator
puts "       A game of Soldiers and Kings. As in War, you either win, or you lose.          "
puts "                                     $1,500 per play                                  "  
seperator     
seperator
    end
   
    def start_game
        new_balance = @player.bankroll.minus_from_wallet(@cost)
        puts "YOUR BALANCE IS: $#{new_balance}                  "
        seperator
        seperator
      choice
    end
  
    def choice
      puts "                             | WHAT'S YOUR CHOICE? |                            "
      seperator
      puts "                                 1) ROCK!                                       "
      seperator
      puts "                                 2) PAPER!!                                     "
      seperator
      puts "                                 3) SCISSORS!!!                                 "
      seperator
      puts "                                 4) LEAVE THE TABLE                             "
      seperator
      puts "................................................................................"
      puts "                         ...............................                      "
      puts "................................................................................"
      seperator
      @choice = gets.to_i 
      case @choice
      when 1
        seperator
        puts "................................................................................"
        seperator
        puts "                             YOU CHOSE- ROCK!                                 "
        rock_case
        seperator
      when 2
        seperator
        puts "................................................................................"
        seperator
        puts "                             YOU CHOSE-- PAPER!!                               "
        paper_case
        seperator
      when 3
        seperator
        puts "................................................................................"
        seperator
        puts "                             YOU CHOSE--- SCISSORS!!!                          "
        scissors_case
        seperator
      when 4
        seperator
        seperator
        puts "                                BYE FELICIA!                                 "
        seperator
        seperator
        seperator
        return
    
      else
        puts "          YOURE NOT REALLY GOOD AT THIS, ARENT YOU? (hint: pick a number)     "
        welcome
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
        seperator
        seperator
        puts "                             COMPUTER CHOSE- ROCK!                            "
        seperator
        seperator
        puts "                                      TIE!                                    "
        seperator
        seperator
        puts "                                   TRY AGAIN.                                 "
        seperator
        puts "................................................................................"
        puts "                         ...............................                      "
        puts "................................................................................"
        puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
      when 2
        seperator
        seperator
        puts "                             COMPUTER CHOSE-- PAPER!!                         "
        seperator
        seperator
        puts "                                 YOU LOST! OUCH!                              "
        seperator
        puts "................................................................................"
        puts "                         ...............................                      "
        puts "................................................................................"
        puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
      else
        seperator
        seperator
        puts "                           COMPUTER CHOSE --- SCISSORS!!!                    "
        seperator
        seperator
        puts "                                   YOU WON!!                                  "
        seperator
        seperator
        puts "YOUR WINNINGS: #{@winnings += @win_amt}"
        puts "................................................................................"
        puts "                         ...............................                      "
        puts "................................................................................"
        puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
      end  
    end
  
    def paper_case
        #computer_choice
        case computer_choice
        when 1
          seperator
          seperator
          puts "                             COMPUTER CHOSE - ROCK                            "
          seperator
          seperator
          puts "                                 YOU WON!!                                    "
          seperator
          seperator
          puts "YOUR WINNINGS: #{@winnings += @win_amt}"
          puts "................................................................................"
          puts "                         ...............................                      "
          puts "................................................................................"
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"      
        when 2
          seperator
          seperator
          puts "                            COMPUTER CHOSE -- PAPER                          "
          seperator
          seperator
          puts "                                    TIE!                                      "
          seperator
          seperator
          puts "                                 TRY AGAIN.                                   "
          seperator
          puts "................................................................................"
          puts "                         ...............................                      "
          puts "................................................................................"
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        else
          seperator
          seperator
          puts "                             COMPUTER CHOSE --- SCISSORS                      "
          seperator
          seperator
          puts "                                 YOU LOST! OUCH!                              "
          seperator
          puts "................................................................................"
          puts "                         ...............................                      "
          puts "................................................................................"
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        end  
      end
  
    def scissors_case
        #computer_choice
        case computer_choice
        when 1
          seperator
          seperator
          puts "                              COMPUTER CHOSE - ROCK                            "
          seperator
          seperator 
          puts "                                 YOU LOST! OUCH!                              "
          seperator
          puts "..............................................................................."
          puts "                         ...............................                      "
          puts "..............................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
          
        when 2
          seperator
          seperator
          puts "                             COMPUTER CHOSE -- PAPER!!                        "
          seperator
          seperator
          puts "                                     YOU WON!!                                "
          seperator
          seperator
          puts "YOUR WINNINGS: #{@winnings += @win_amt}"
          puts "................................................................................"
          puts "                         ...............................                      "
          puts "................................................................................"
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        else
          seperator
          seperator
          puts "                             COMPUTER CHOSE --- SCISSORS!!!                   "
          seperator
          seperator
          puts "                                         TIE!                                 "
          seperator
          seperator
          puts "                                      TRY AGAIN.                              "
          seperator
          puts "................................................................................"
          puts "                         ...............................                      "
          puts "................................................................................"
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        end  
      end
  
  end
  



 