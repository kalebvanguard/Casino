require "pry"

class Roulette
  def initialize(player)
    @player = player

  end

def wallet_bouncer
  puts "How much would you like to bet?"
  @user_bet = gets.to_i
  if @user_bet > 50
    #replace with @wallet later
    puts "Insufficient funds, come again later."
  else
    puts "You've bet $#{@user_bet}. Good luck!"
  end
  welcome
  set_winning_values
  spin_wheel
end

def self.start_game
  puts "██████╗  ██████╗ ██╗   ██╗██╗     ███████╗████████╗████████╗███████╗"
  puts "██╔══██╗██╔═══██╗██║   ██║██║     ██╔════╝╚══██╔══╝╚══██╔══╝██╔════╝"
  puts "██████╔╝██║   ██║██║   ██║██║     █████╗     ██║      ██║   █████╗"
  puts "██╔══██╗██║   ██║██║   ██║██║     ██╔══╝     ██║      ██║   ██╔══╝"
  puts "██║  ██║╚██████╔╝╚██████╔╝███████╗███████╗   ██║      ██║   ███████╗"
  puts "╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚══════╝"
  welcome
end

def welcome
puts "Welcome to Roulette!"
wallet_bouncer
puts "Choose a number between 1 - 36"
gets.to_s == @num_bet
puts "Bet on a color: "
color.each_with_index do |color, i|
  print "#{ i + 1}) "
  puts "#{color}"
  gets.strip == @color_bet
  puts "Bet on even or odd:"
  gets.to_s == @even_bet
end
  end

  def set_winning_values()
    number = rand(30)
    winning_number = number
    @winning_number = number
    puts "#{winning_number}"
    color = ["Red", "Green"]
    @winning_color = color.sample
    puts "#{@winning_color}"
    even_odd = ["Even", "Odd"]
    @even_odd = even_odd.sample
    puts "#{@even_odd}"
    end


  def spin_wheel()
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
    case
    when @num_bet && @color_bet && @even_bet == @winning_number || @winning_color || @even_odd
      @player.bankroll.add_to_wallet(@user_bet)
      puts "Congratulations! You guessed one or more right! You won $#{@user_bet * 2}"
    when @num_bet && @color_bet && @even_bet == @winning_number && @winning_color && @even_odd
      @player.bankroll.add_to_wallet(@user_bet * 2)
      puts "Congratulations! You guessed everything right! You won $#{@user_bet * 4}"
      @player.bankroll.add_to_wallet(@user_bet * 4)
    else
      puts "Sorry, you lost!"
      @player.bankroll.minus_from_wallet(@user_bet)
    end
    puts "Would you like to play again? [Y/N]"
    if gets.strip = "y"
      start_game
    else 
      exit
      start_casino
    end
end
start_game
end
