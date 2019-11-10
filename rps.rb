
require "pry"

class RockPaperScissors

  def initialize(player)
    @player = player
    @cost = 100
    @win_amt = 200
    @lose_amt = 300
    @winnings = 0
    @lost = 0
  end

  def welcome
    if @player.bankroll.wallet >= @cost
      puts
      puts
      puts "------------- ~ Initial cost to play is $100 ~ -------------" 
      puts "---------~ Would you like to try your luck? (y/n) ~ --------"
      puts
      puts
      puts
      user_input = gets.strip
      if user_input == "y"
        new_balance = @player.bankroll.minus_from_wallet(@cost)
        puts
        puts "              Your new balance is: $#{new_balance}           "
        puts
        choice
      elsif user_input == "n"
        puts
        puts "       BYE!       "
        puts
      else
        puts
        puts "       Hmm.. had too many drinks? Lets try that again:       "
        puts
        welcome
      end
    else
      puts
      puts "             You don't have enough monies :(            "  
      puts
    end
  end

  def start_game
    puts
    puts "||.........................................................................||"
    puts
    puts "  ------- ~ ~ Welcome to ROCK PAPER SCISSORS, #{@player.name}! ~ ~ -------"
    puts
    puts "||.........................................................................||"
    puts
    #puts
    choice
  end

  def leave_game
    return
    return
  end

  def choice
    puts
    puts "                  Make your choice:              "
    puts
    puts "............ 1) ROCK ............................."
    puts "............ 2) PAPER ............................"
    puts "............ 3) SCISSORS ........................."
    puts "............ 4) Back to Casino Main Menu ........."
    puts
    puts
    @choice = gets.to_i
    case @choice
    when 1
      puts
      puts ".............. You chose: ROCK .............."
      puts
      rock_case
    when 2
      puts
      puts "............. You chose: PAPER .............."
      puts
      paper_case
    when 3
      puts
      puts "............ You chose: SCISSORS ............"
      puts
      scissors_case
    else
      # go_back = Casino.new
      # go_back.start_casino #<< works to take you back but it completely starts game over with new wallet and new player
      puts
      puts "........      Ok, back to the Casino it is     ........"
      puts
      puts
      puts
      puts
      puts
      @player.bankroll.add_to_wallet(@cost)
      return
    # else
    #   puts "........ Try again, (hint: pick a number 1-4) ........"
    #   puts
    #   @player.bankroll.add_to_wallet(@cost)
    #   #start_game
    #   choice << Can't figure out how to fix this looping bug
    end

    if @player.bankroll.wallet >= @cost
      choice
    elsif @player.bankroll.wallet >= 0
      puts "        You didn't have enough monies to play again :(        "
      puts
      puts
      puts
    else
      puts ".......... You lost all your money, go home loser .........."
      puts
      puts
      exit
    end
  end

  def computer_choice
    random = rand(1..3)
  end

  def lose
    puts
    puts ".............. You LOSE $150!! .............."
    puts
    puts
    puts
    @lost += @lose_amt
    @player.bankroll.minus_from_wallet(@lose_amt)
    if @player.bankroll.wallet >= 0
      puts
      puts "          New amount in wallet: $#{@player.bankroll.wallet}         "
      puts
    else @player.bankroll.wallet <= 0
      puts
      puts "...........    New amount in wallet: $0    ..........."
      puts
      puts
    end
  end

  def win
    puts
    puts "............... You WIN $200!! .............."
    puts
    puts
    puts
    @winnings += @win_amt
    puts "           New amount in wallet: $#{@player.bankroll.add_to_wallet(@win_amt)}          "
    puts  
    puts
  end

  def tie
    puts
    puts "................... Tie! ..................."
    puts
    puts "................ Try again ................."
    puts
    puts
  end

  def rock_case

    case computer_choice
    when 1
      puts "........... Computer chose: ROCK ............"
      tie
    when 2
      puts "........... Computer chose: PAPER ..........."
      lose
    else
      puts ".......... Computer chose: SCISSORS ........."
      win
    end  
  end

  def paper_case
  
    case computer_choice
    when 1
      puts "........... Computer chose: ROCK ............"
      win
    when 2
      puts "........... Computer chose: PAPER ..........."
      tie
    else
      puts ".......... Computer chose: SCISSORS ........."
      lose
    end
  end

  def scissors_case
  
    case computer_choice
    when 1
      puts "........... Computer chose: ROCK ............"
      lose
    when 2
      puts "........... Computer chose: PAPER ..........."
      win
    else
      puts ".......... Computer chose: SCISSORS ........."
      tie
    end
  end

end

