class Roulette

  def initialize(player)
    @player = player
  end

  def set_winning_values
    number = rand(36)
    winning_number = number
    @winning_number = number
    puts "#{winning_number}"
    color = ["Red", "Black"]
    @winning_color = color.sample
    puts "#{@winning_color}"
    even_odd = ["Even", "Odd"]
    @even_odd = even_odd.sample
    puts "#{@even_odd}"
  end
  
  def start_game
    puts "██████╗  ██████╗ ██╗   ██╗██╗     ███████╗████████╗████████╗███████╗"
    puts "██╔══██╗██╔═══██╗██║   ██║██║     ██╔════╝╚══██╔══╝╚══██╔══╝██╔════╝"
    puts "██████╔╝██║   ██║██║   ██║██║     █████╗     ██║      ██║   █████╗"
    puts "██╔══██╗██║   ██║██║   ██║██║     ██╔══╝     ██║      ██║   ██╔══╝"
    puts "██║  ██║╚██████╔╝╚██████╔╝███████╗███████╗   ██║      ██║   ███████╗"
    puts "╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚══════╝"
    bet
  end
  
  
  def bet
  puts "Welcome to Roulette!"
  puts "How much would you like to bet?"
  @user_bet = gets.to_i
  if @user_bet > @player.bankroll.wallet
    puts "Insufficient funds, come again later."
  else
    @player.bankroll.minus_from_wallet(@user_bet)
    puts "You've bet $#{@user_bet}. Good luck!"
    user_bet
  end
  end
  
  def user_bet
  puts "Choose a number between 1 - 36"
  gets.to_s == @num_bet
  puts "Bet on a color (Red or Black): "
  color = ["Red, Black"]
  gets.strip == @color_bet
  puts "Bet on even or odd:"
  gets.to_s == @even_bet
  spin_wheel
  end
  
  def spin_wheel
    set_winning_values
    puts "Wheel spins in 3..."
    sleep(1)
    puts "2..."
    sleep(1)
    puts "1..."
    sleep(1)
    puts "Go!"
    sleep(1)
    puts "The winning number is: #{@winning_number}"
    puts "This winning color is: #{@winning_color}"
    puts "The winning even/odd is: #{@even_odd}"
    sleep(1)
    if @num_bet && @color_bet && @even_bet == @winning_number || @winning_color || @even_odd
      @player.bankroll.add_to_wallet(@user_bet * 2)
      puts "Congratulations! You guessed one or two right! You won $#{@user_bet * 2}"
    elsif @num_bet && @color_bet && @even_bet == @winning_number && @winning_color && @even_odd
      @player.bankroll.add_to_wallet(@user_bet * 4)
      puts "Congratulations! You guessed everything right! You won $#{@user_bet * 4}"
    elsif
      puts "Sorry, you lost!"
      @player.bankroll.minus_from_wallet(@user_bet)
    end
    puts "Would you like to play again? [Y/N]"
    if gets.strip == "y"
      start_game
    else 
      return
    end
  end

end