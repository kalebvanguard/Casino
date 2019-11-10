def seperator 
puts
end

class Fight_cat
    def initialize(player)
      @player = player
      @cost = 5000
      @win_amt = 1000
      @winnings = 0
    end
  
    def welcome
      system("clear")
        @player.bankroll.wallet >= @cost
seperator
seperator
seperator        
puts "......................................................................................  ...   ... "
puts "........................ ............   .............................................  ...   ... "
puts "...................  ..  ..........  ...............................................  ...   ...  "
puts "..................       ........  ...       .........     .....           ........  ...   ...  ."  
puts "......................           .....   ............   .   ........   ...........  ...   ...  .."
puts "......................  /FIGHT/ ......   ...........   ...   .......   ..........  ...   ...  ..."
puts "......................           .....   ..........   .....   ......   .........  ...   ...  ...."
puts "...................... ..  ... ..  ...       .....             .....   ........  ...   ...  ....."
puts ".....................  ..  ... ... ...........................................  ...   ...  ......"
puts ".............................................................................  ...   ...  ......."
seperator
puts "                   This isn't for pampered house-cats or weak alley-cats. 
                                Meow-some, puuurfect, paw-tastic."
puts "                                     $5000 per play                                  "  
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
puts "                                 press enter to continue"
gets
system("clear")
seperator
seperator
seperator
puts "........................................................................................"
puts "........................................................................................"
puts "........................................................................................"
seperator
      puts "                              WHAT'S YOUR CHOICE?                                 "
      seperator
      puts "                                 1) ROLL ()                                       "
      seperator
      puts "                                 2) POUNCE ~                                      "
      seperator
      puts "                                 3) Scratch ///                                   "
      seperator
      puts "                                 4) FLEE THE BATTLE!                              "
      seperator
      puts "........................................................................................"
      puts "........................................................................................"
      puts "........................................................................................"
      puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
      @choice = gets.to_i 
      system("clear")
      seperator
      seperator
      case @choice
      when 1
        seperator
        puts ".....................................................................  ....  ....  ......"
        puts "....................................................................  ....  ....  ......."                    
        puts "...................................................................  ....  ....  ........"
        seperator
        seperator
        puts "                             FIGHT-CAT: ROLLS! ()                                "
        roll_case
        seperator
      when 2
        seperator
        puts ".....................................................................  ....  ....  ......"
        puts "....................................................................  ....  ....  ......."                    
        puts "...................................................................  ....  ....  ........"
        seperator
        seperator
        puts "                              FIGHT-CAT: POUNCES! ~                               "
        pounce_case
        seperator
      when 3
        seperator
        puts ".....................................................................  ....  ....  ......"
        puts "....................................................................  ....  ....  ......."                    
        puts "...................................................................  ....  ....  ........"
        seperator
        seperator
        puts "                               FIGHT-CAT: SCRATCHES! ///                          "
        scratch_case 
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
  
    def roll_case
      #computer_choice
      case computer_choice
      when 1
        puts ".................................................. ... ........................................."
        puts "........................ ............   ......... ....  ........................................."
        puts "...................  ..  ..........  ...........        ........................................."
        puts ".................. o  O  ........  ............         ........................................."  
        puts "......................           .................                  ............................."
        puts "......................  /FIGHT/ .................   ...   .......   ............................."
        puts "......................           ...............   .....   ......   ............................."
        puts "...................... ..  ... ..  .............................................................."
        puts ".....................  ..  ... ... .............................................................."
        puts "................................................................................................."
        seperator
        seperator
        puts "                             EVIL FIGHT-CAT: ROLLS! ()                            "
        seperator
        seperator
        puts "                                      TIE!                                    "
        seperator
        seperator
        puts "                                   TRY AGAIN.                                 "
        seperator
        puts "........................................................................................."
        answers = [ "COMMENTATOR: I'd like to thank our sponsor redbull; it give you energy to tollerate things." , "COMMENTATOR: ...Uh, is it Fight-Cat or litte bitch-cat?", "OMMENTATOR: Tie... Wow. I'm glad I'm missing the Bg bang Theory for this." ,]
        puts answers.sample                                                                              
        puts "........................................................................................." 
        puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
      when 2
        seperator
        seperator
        puts "                            EVIL CYBER-CAT: POUNCES ~                         "
        seperator
        seperator
        puts "                                 YOU LOST! OUCH!                              "
        seperator
        puts "........................................................................................."
        answers = ["(COMMENTATOR: You lost by POUNCE? HAHAHAHAAHA!", " Really rolled right into that one." , "I don't know what that technique is called, I just know the sound it makes when it takes a man's life. ", ]
        puts answers.sample    
        puts "........................................................................................."
        puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
      else
        seperator
        seperator
        puts "                        EVIL CYBER_CAT: SCRATCHES! ///                   "
        seperator
        seperator
        puts "                                   YOU WON!!                                  "
        seperator
        seperator
        puts "YOUR WINNINGS: #{@winnings += @win_amt}"
        puts "........................................................................................."
        answers = ["(COMMENTATOR: Scratching away at that debt huh?." , "Has anyone seen my phone? ", "OMMENTATOR: Fight-Cat is out here with a fuuuury." ,]
        puts answers.sample    
        puts "........................................................................................."
        puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
      end  
    end
  
    def pounce_case
        #computer_choice
        case computer_choice
        when 1
          seperator
          seperator
          puts "                          EVIL CYBER_CAT: ROLLS! ()                            "
          seperator
          seperator
          puts "                                 YOU WON!!                                    "
          seperator
          seperator
          puts "YOUR WINNINGS: #{@winnings += @win_amt}"
          puts "........................................................................................."
          answers = ["COMMENTATOR: Fight-Cat really is a fan of limpbizkit" , "That was as unexpected and as bad as the Happening." , "OMMENTATOR: Really, rolled into victory?", "Roll-tide!!", ]
          puts answers.sample    
          puts "........................................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"      
        when 2
          seperator
          seperator   
          puts "                          EVIL CYBER_CAT: POUNCES ~                              "
          seperator
          seperator
          puts "                                    TIE!                                      "
          seperator
          seperator
          puts "                                 TRY AGAIN.                                   "
          seperator
          puts "........................................................................................."
          answers = ["COMMENTATOR: Cyber_Cat has come out with a fuuuuuuurious attack." , "Why are you like this?",  "COMMENTATOR: someone should show them how to do something besides Pounce.",]
          puts answers.sample    
          puts "........................................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        else
          seperator
          seperator
          puts "                           EVIL CYBER_CAT: SCRATCHES! ///                      "
          seperator
          seperator
          puts "                                 YOU LOST! OUCH!                              "
          seperator
          puts "........................................................................................."
          answers = ["COMMENTATOR: Cyber_Cat cutting 'em down out here!'." , "COMMENTATOR: Ohhhh lawd, oh gerry! Get 'em out of there!",]
          puts answers.sample    
          puts "........................................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        end  
      end
  
    def scratch_case
        #computer_choice
        case computer_choice
        when 1
          seperator
          seperator
          puts "                           EVIL CYBER_CAT: ROLLS! ()                           "
          seperator
          seperator 
          puts "                                 YOU LOST! OUCH!                              "
          seperator
          puts "........................................................................................."
          answers = ["COMMENTATOR: Cyber_Cat with the Righteous roll!" , "COMMENTATOR: Maybe its time for Fight-Cat to retire.",]
          puts answers.sample    
          puts "........................................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
          
        when 2
          seperator
          seperator
          puts "                            EVIL CYBER_CAT: POUNCES! ~                       "
          seperator
          seperator
          puts "                                     YOU WON!!                                "
          seperator
          seperator
          puts "YOUR WINNINGS: #{@winnings += @win_amt}"
          puts "........................................................................................."
          answers = ["COMMENTATOR: --sports jargon and catch phrase--" , "COMMENTATOR: Cyber_Cat must've gotten hacked!",]
          puts answers.sample    
          puts "........................................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        else
          seperator
          seperator
          puts "                            EVIL CYBER_CAT: SCRACTCHES! ///                   "
          seperator
          seperator
          puts "                                         TIE!                                 "
          seperator
          seperator
          puts "                                      TRY AGAIN.                              "
          seperator
          puts "........................................................................................."
          answers = ["COMMENTATOR: Sorry I was looking at my phone, what happened?" , "COMMENTATOR: For a single Cat, sure got tied down." ,]          
          puts answers.sample    
          puts "........................................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        end  
      end
  
  end
  



 