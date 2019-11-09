# require_relative "casino"

class RockPaperScissors
  def initialize(player)
    @player = player
    @cost = 100
    @win_amt = 200
    @winnings = 0
    welcome
  end

  def welcome
    if @player.bankroll.wallet >= @cost
      puts "Cost for initial play is $100, would you like to try your luck? (y/n)"
      case gets.strip
      when "y"
        new_balance = @player.bankroll.minus_from_wallet(@cost)
        puts "Your new balance is: $#{new_balance}"
        start_game
      else
        exit
      end
    else
      puts "You don't have enough monies :("
      exit
    end
  end
  def start_game
    puts "Welcome to Rock Paper Scissors, #{@player.name}!"
    puts
    puts "Let's Play"
    puts
    choice
  end

  def choice
    puts "Make your choice:"
    puts "1) Rock"
    puts "2) Paper"
    puts "3) Scissors"
    # puts "4) Back to main menu"
    puts "5) Exit"
    puts
    @choice = gets.to_i
    case @choice
    when 1
      puts "You chose: Rock"
      rock_case
    when 2
      puts "You chose: Paper"
      paper_case
    when 3
      puts "You chose: Scissors"
      scissors_case
    # when 4
    when 5
      puts "Goodbye!"
      exit
    else
      puts "Try again, (hint: pick a number)"
      start_game
    end
    choice
  end

  def computer_choice
    random = rand(1..3)
  end

  def rock_case
    computer_choice
    case computer_choice
    when 1
      puts "Computer chose: Rock"
      puts "Tie!"
      puts "Try again"
    when 2
      puts "Computer chose: Paper"
      puts "You loose!!"
    else
      puts "Computer chose: Scissors"
      puts "You win!!"
      puts "Your winnings: #{@winnings += @win_amt}"
      puts "New amount in wallet: $#{@player.bankroll.add_to_wallet(@winnings)}"
    end  
  end

  def paper_case
    computer_choice
    case computer_choice
    when 1
      puts "Computer chose: Rock"
      puts "You win!!"
      puts "Your winnings: #{@winnings += @win_amt}"
      puts "New amount in wallet: $#{@player.bankroll.add_to_wallet(@winnings)}"
    when 2
      puts "Computer chose: Paper"
      puts "Tie!"
      puts "Try again"
    else
      puts "Computer chose: Scissors"
      puts "You loose!!"
    end
  end

  def scissors_case
    computer_choice
    case computer_choice
    when 1
      puts "Computer chose: Rock"
      puts "You loose!!"
    when 2
      puts "Computer chose: Paper"
      puts "You Win!!"
      puts "Your winnings: #{@winnings += @win_amt}"
      puts "New amount in wallet: $#{@player.bankroll.add_to_wallet(@winnings)}"
    else
      puts "Computer chose: Scissors"
      puts "Tie!"
      puts "Try again"
    end
  end

end
