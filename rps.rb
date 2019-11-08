class RockPaperScissors
  def initialize(player)
    @player = player
  end

  def start_game
    puts "Welcome to Rock Paper Scissors, #{@player.name}!"
    puts
    puts "Let's Play"
    puts
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
      puts "You chose Rock"
      rock_case
    when 2
      puts "You chose Paper"
      paper_case
    when 3
      puts "You chose Scissors"
      scissors_case
    # when 4
    when 5
      puts "Goodbye!"
      exit
    else
      puts"Try again, (hint: pick a number)"
      start_game
    end
  end

  def computer_choice
    
  end

  def rock_case
  end

  def paper_case
  end

  def scissors_case
  end

end
