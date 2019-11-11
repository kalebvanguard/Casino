require "colorize"

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
puts "......................................................................................  ...   ..."
puts "........................ ............   .............................................  ...   ... "
puts ".................... ..  ..........  ...............................................  ...   ...  "
puts ".................. o  O   .......  ...         .......     .....            .......  ...   ...  ."  
puts "......................           .....   ............   .   ........   ...........  ...   ...  .."
puts "......................  /FIGHT/ ......   ...........   ...   .......   ..........  ...   ...  ..."
puts "......................           .....   ..........   .....   ......   .........  ...   ...  ...."
puts "...................... ..  ... ..  ...       .....             .....   ........  ...   ...  ....."
puts ".....................  ..  ... ... ...........................................  ...   ...  ......"
puts ".............................................................................  ...   ...  ......."
seperator
puts "    This isn't for pampered house-cats or weak alley-cats. Meow-some, puuurfect, paw-tastic."
seperator
seperator
puts "                                 press enter to continue"
gets
system("clear")
seperator
seperator
seperator
  puts "......................................................................................."
  puts "................................                        ..............................."
  puts "........................ ......  This                    .............................."
  puts "...................  ..  ......       is your            .............................."
  puts ".................. o  O  .......              FIGHT-CAT ..............................."  
  puts "....................     .............................................................."
  puts "....................      ......   ...................................................."
  puts "................... /Mrow/ ...   ......................................................"
  puts "..................           ....  ...................................................."
  puts "..................            ..   ...................................................."
  puts "..................             .  ....................................................."
  puts "..................                ....................................................."
  puts "......................................................................................."
  seperator
  puts "                           press enter to continue"
  gets
system("clear")
seperator
seperator
seperator
  puts "......................................................................................."
  puts "................................                        ..............................."
  puts ".................... ... ......  Your                    .............................."
  puts "...................  ..  ......       Rival is the       .............................."
  puts ".................. []  {} ......         EVIL CYBER-CAT ..............................."  
  puts "...................   ,   ............................................................."
  puts "....................      ......   ...................................................."
  puts ".................../*Derp*/ ...   ....................................................."
  puts "..................           ....  ...................................................."
  puts "..................    .        ..   ..................................................."
  puts "..................   ...       .  ....................................................."
  puts "..................  ......       ......................................................"
  puts "......................................................................................."
  seperator
  puts "                             press enter to continue"
  gets
  system("clear")
    end
    def start_game
    seperator
    seperator
    seperator
    puts "                       Your Fight-Cat cannot lose 3 battles."
    seperator
    seperator
    seperator
    seperator
    seperator
    puts "                             press enter to continue"
      choice
    end
  
    def choice
      gets
      system("clear")
      new_balance = @player.bankroll.minus_from_wallet(@cost)
      puts "YOUR BALANCE IS: $#{new_balance}                  "
      puts "......................................................................................."
      puts "......................................................................................."
      seperator
      seperator
      puts "                              WHAT'S YOUR CHOICE?                                 "
      seperator
      puts "                                 1) ROLL ()                                       "
      seperator
      puts "                                 2) POUNCE ~                                      "
      seperator
      puts "                                 3) SCRATCH ///                                   "
      seperator
      puts "                                 4) Pet the Kitteh                             "
      seperator
      puts "                                 5) FLEE THE BATTLE !!                                   "
      seperator
      puts "........................................................................................"
      puts "........................................................................................"
      puts "........................................................................................"
      puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
      @choice = gets.strip.to_i 
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
        puts "                              FIGHT-CAT: ROLLS! ()                                "
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
        puts "                              FIGHT-CAT: SCRATCHES! ///                          "
        scratch_case 
        seperator
      when 4
      seperator
      seperator
      puts "                              Even Fight-Cats deserve to be loved.                                                                                 "
      puts ".......................................        ......................  ...................................."
      puts "...................................... /*pets*/ .....  ..............  ...................................."
      puts "..............................        .........        ............  ......................................"
      puts "............................. /*pets*/ ........>   <   ..........  ........................................"
      puts ".....................................................  /Puur/       ......................................."
      puts ".....................................................              ........................................"
      puts "..................................................... .. ...... ... ......................................."
      puts "..................................................... .. ...... ... ......................................."
      puts "..........................................................................................................."
      puts "..........................................................................................................."
      puts "..........................................................................................................."
      seperator
      pet_case
      when 5
        seperator
        seperator  
        puts "                                    BYE FELICIA!                                   "
        seperator
        seperator
        seperator
        seperator
        puts "                               press enter to continue                             "
        gets
        seperator
        seperator
        return 

      else
        seperator
        seperator
        seperator
        answers = ["             COMMENTATOR: I bet someone gets a tax write-off because of you. Try again.", 
          "                      COMMENTATOR: Alright--look kid-- I don't get paid enough for this. Try again." , 
          "                      COMMENTATOR: God, you're not with PETA or something? try again."]
        print answers.sample
        seperator
        seperator
        seperator
        puts "                               press enter to continue                                              "
        choice
        return
      end
      choice
    end
  
    def computer_choice
        random = rand(1..3)
    end

    def pet_case
      #computer_choice
      case computer_choice
      when 1
        seperator
        seperator
        puts "                             kitteh likes it >__<                                       "
        seperator
        seperator
        puts "                                      Meeew                                             "
         seperator
        puts "........................................................................................."
        puts                                                                         
        puts "........................................................................................." 
        seperator
        puts "                               press enter to continue                                   " 
      when 2
        seperator
        seperator
        puts "                              Kitteh doesnt like it                                    "
        puts "                                      Kitteh ///                                       "
        seperator
        seperator
        puts "                                      OUCH!                                             "
        seperator
        puts "........................................................................................."
        puts
        puts "........................................................................................."
        seperator
        puts "                              press enter to continue"
      else
        seperator
        seperator
        puts "                                    Kitteh ()                                         "
        puts "                                 looks adorable                                       "   
        seperator
        seperator
        puts "                               *Your heart is melted                                 "
        seperator
        puts "........................................................................................."
        puts
        puts "........................................................................................."
        seperator
        puts "                                press enter to continue                                 "
      end  
    end
  
    def roll_case
      #computer_choice
      case computer_choice
      when 1
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
        puts "                               press enter to continue"
      when 2
        seperator
        seperator
        puts "                             EVIL CYBER-CAT: POUNCES ~                         "
        seperator
        seperator
        puts "                                 YOU LOST! OUCH!                              "
        seperator
        puts "........................................................................................."
        answers = ["(COMMENTATOR: You lost by POUNCE? HAHAHAHAAHA!", " Really rolled right into that one." , "I don't know what the technique's called, I just know the sound it makes when it takes a man's life. ", ]
        puts answers.sample    
        puts "........................................................................................."
        puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
        puts "                              press enter to continue"
      else
        seperator
        seperator
        puts "                           EVIL CYBER_CAT: SCRATCHES! ///                   "
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
        puts "                             press enter to continue"

      end  
    end
  
    def pounce_case
        #computer_choice
        case computer_choice
        when 1
          seperator
          seperator
          puts "                           EVIL CYBER_CAT: ROLLS! ()                            "
          seperator
          seperator
          puts "                                  YOU WON!!                                    "
          seperator
          seperator
          puts "YOUR WINNINGS: #{@winnings += @win_amt}"
          puts "........................................................................................."
          answers = ["COMMENTATOR: Fight-Cat really is a fan of limpbizkit" , "That was as unexpected and as bad as the Happening." , "OMMENTATOR: Really, rolled into victory?", "Roll-tide!!", ]
          puts answers.sample    
          puts "........................................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"      
          puts "                            press enter to continue"
        when 2
          seperator
          seperator   
          puts "                            EVIL CYBER_CAT: POUNCES ~                              "
          seperator
          seperator
          puts "                                    TIE!                                      "
          seperator
          seperator
          puts "                                 TRY AGAIN.                                   "
          seperator
          puts "........................................................................................."
          answers = ["COMMENTATOR: Cyber_Cat has come out with a fuuuuuuurious attack." , "COMMENTATOR: Why are you like this?",  "COMMENTATOR: someone should show them how to do something besides Pounce.",]
          puts answers.sample    
          puts "........................................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
          puts "                            press enter to continue"

        else
          seperator
          seperator
          puts "                            EVIL CYBER_CAT: SCRATCHES! ///                      "
          seperator
          seperator
          puts "                                 YOU LOST! OUCH!                              "
          seperator
          puts "........................................................................................."
          answers = ["COMMENTATOR: Cyber_Cat cutting 'em down out here!'." , "COMMENTATOR: Ohhhh lawd, oh gerry! Get 'em out of there!",]
          puts answers.sample    
          puts "........................................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
          puts "                             press enter to continue"

        end  
      end
  
    def scratch_case
        #computer_choice
        case computer_choice
        when 1
          seperator
          seperator
          puts "                              EVIL CYBER_CAT: ROLLS! ()                           "
          seperator
          seperator 
          puts "                                 YOU LOST! OUCH!                              "
          seperator
          puts "........................................................................................."
          answers = ["COMMENTATOR: Cyber_Cat with the Righteous roll!" , "COMMENTATOR: Maybe its time for Fight-Cat to retire.",]
          puts answers.sample    
          puts "........................................................................................."
          puts "NEW AMOUNT IN WALLET: $#{@player.bankroll.add_to_wallet(@winnings)}"
          puts "                              press enter to continue"

          
        when 2
          seperator
          seperator
          puts "                               EVIL CYBER_CAT: POUNCES! ~                       "
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
          puts "                              press enter to continue"

        else
          seperator
          seperator
          puts "                             EVIL CYBER_CAT: SCRACTCHES! ///                   "
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
          puts "                                press enter to continue"

        end  
      end
  
  end
  



  # seperator
  # puts "...................................................... .................  ................................."
  # puts "........................ ............   ......... ....  ..............  ..................................."
  # puts "...................  ..  ..........  ...........        ............  .................... ... ............"
  # puts ".................. o  O  ........  ............[]   []  ..........  ......................     ............"  
  # puts "......................           ....................              ...............   .....  O o..........."
  # puts "......................  /FIGHT/ .....................              ..............  .....    ..............."
  # puts "......................           .................... .. ...... ... ..............  ..      ..............."
  # puts "...................... ..  ... ..  .................. .. ...... ... ..............   .     . .............."
  # puts ".....................  ..  ... ... ................................................        .. ............."
  # puts "..........................................................................................................."
  # seperator
  

  # seperator
  # puts ".........................................................................................................."
  # puts "........................ ................................................................................."
  # puts "...................  ..  ................................................................................."
  # puts ".................. o  O  ................................................................................."  
  # puts "....................     ........   ......................................................................"
  # puts "....................      ......    ......................................................................"
  # puts "................... /Meow/  ...   ......................................................................."
  # puts "..................            ...  ......................................................................."
  # puts "..................             .. ........................................................................"
  # puts "...............................   ........................................................................"
  # seperator

  # seperator
  # puts ".......................................        ......................  ...................................."
  # puts "...................................... /*pets*/ .....  ..............  ...................................."
  # puts "..............................        .........        ............  ......................................"
  # puts "............................. /*pets*/ ........>   <   ..........  ........................................"
  # puts ".....................................................  /Puur/       ......................................."
  # puts ".....................................................              ........................................"
  # puts "..................................................... .. ...... ... ......................................."
  # puts "..................................................... .. ...... ... ......................................."
  # puts "..........................................................................................................."
  # puts "..........................................................................................................."
  # puts "..........................................................................................................."
  # seperator