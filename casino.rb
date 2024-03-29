# Basic Objectives:

# Start game player has a name and a wallet
# Player can go to different games via menu
# Slots
# High / Low
# Use classes to start the casino, bankroll, and each individual game
# Player places bet and wins / loses (hint: rand)
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
# Player's bankroll goes up and down with wins and losses
# Ability to move to and from games

require "pry"
require_relative 'rps' 
require_relative 'deck'
require_relative 'dice'
require_relative 'fight_cat'
require_relative 'roulette'
require_relative 'slots'

def seperator
  puts
end

class Player
  attr_accessor :name, :bankroll

  def initialize(name)
    @name = name
    @min_amount = 100
    @max_amount = 1000
    start_amount = rand(@min_amount..@max_amount)
    @bankroll = Wallet.new(start_amount)
  end
end

class Wallet
  attr_accessor :wallet

  def initialize(wallet)
    @wallet = wallet
  end

  def add_to_wallet(amount)
    @wallet += amount;
  end

  def minus_from_wallet(amount)
    @wallet -= amount;
  end
end

class PlayerList
  attr_accessor :playerList
  def initialize
    @playerList = []
  end
  def addPlayer(player)
    @playerList.push(player)
  end
  def list_players
    id = 1
    @playerList.each do |player|
      print "#{id}) "
      puts player.name
      id += 1
    end
  end
  # def clear_players
  #   @playerList.clear
  # end
  def list_wallet
    @playerList.each do |player|
      puts "     ..... #{player.name}'s balance is: $#{player.bankroll.wallet} .....     "
    end
  end
end

class Casino
  def initialize
    @playersList = PlayerList.new
  end

  def start_casino
    system("clear")
    seperator
    seperator 
    seperator
    puts "||                                                  ......................                                                     ||"
    puts "||                                                ...........................                                                  ||"
    puts "||                                           ......................................                                            ||" 
    puts "||.............................................................................................................................||"
    puts "||.............................................................................................................................||"
    puts "||.............................................................................................................................||"
    puts " ______________________________________________________________________________________________________________________________||"
    puts "||                                                          WELCOME                                                            ||"
    puts "||                                                           TO THE                                                            ||"
    puts "||                                                        Sunset CASINO                                                        ||"
    puts "||.............................................................................................................................||"
    puts "||.............................................................................................................................||"
    puts "||                                              .................................                                              ||"
    puts "||                                                ...........................                                                  ||"
    puts 
    new_player
    welcome_method
  end


  def new_player
    puts
    puts "           Please input a player name:           "
    puts
    puts
    player_name = gets.strip.to_s
    player = Player.new(player_name)
    @playersList.addPlayer(player)
  end

  def select_player
    if @playersList.playerList.length > 1
      puts "      Which player would like to play?      "
      @playersList.list_players
      selected_player = gets.strip.to_i
      return selected_player - 1
    else
      return 0 
      #references @playerList array index
    end
  end

  
  def welcome_method
    while true
      # @current_player = @playersList.playerList[select_player]
      # random_event
      menu_options
      user_game_choice = gets.to_i
      case user_game_choice
      when 1
        game = RockPaperScissors.new(@playersList.playerList[select_player])
        game.welcome # I need to call the welcome method first so my game works the right way
        #in each game make sure these are not there
        #game.start_game # calling the start method for my game screws up the order
      when 2
        game = Dice.new(@playersList.playerList[select_player])
        game.welcome
        game.start_game()
        welcome_method()
      when 3
        game = Roulette.new(@playersList.playerList[select_player])
        game.start_game() #took out some calls here so my game will run correctly
      when 4
        new_player
      when 5
        game = Fight_cat.new(@playersList.playerList[select_player])
        game.welcome
        game.start_game()
        welcome_method()
      when 6
        game = Slots.new(@playersList.playerList[select_player])
        game.welcome
      when 7
        # @playersList.playerList.clear
        # binding.pry
        exit
    end
  end
end

# def random_event
#   event = rand(1..8)
#   case event
#   when 1, 2, 3 
#     puts
#   when 4, 5
#     puts
#     puts
#     puts "-------       You got robbed by a stripper!! (lose $50)       -------" #I freaking love this
#     @current_player.bankroll.minus_from_wallet(50)
#   when 6
#     puts
#     puts
#     puts "-------       A drunk lottery winner is feeling generous! (win $300)       -------"
#     @current_player.bankroll.add_to_wallet(300)
#   else
#     puts
#     puts
#     puts "-------     You have been given a pet sloth for extra luck and moral support     -------"
#   end
# end

  def menu_options
    system("clear")
    puts
    puts
    seperator
    seperator
    seperator
    puts "                                                            |||*** CASINO MAIN LOBBY ***|||                                      "                                        
    seperator
    puts "             .............      .............       .............     .............     .............     .............     ____________ "
    puts "             .............      .............       .............     .............     .............     .............    |     ||     |"
    puts "             |    1)     |      .     2)    .       .     3)    .     .    4)     .     .    5)     .     .    6)     .    |     7)     |"
    puts "             |   Rock    |      .    ATM    .       . Roulette  .     .    New    .     .  /FIGHT/  .     .   SLOTS   .    |    EXIT    |"
    puts "             |   paper   |      . [][][][]  .       .           .     .   Player  .     .    CAT    .     .           .    |     ||     |"
    puts "             |  Scissors |      . [][][][]  .       .           .     .           .     .           .     .           .    |     ||     |"       
    puts "             |           |      .           .       .           .     .           .     .           .     .           .    |     ||     |"
    puts "             .............      .............       .............     .............     .............     .............    |     ||     |"        
    puts "             .............      .............       .............     .............     .............     .............    |_____||_____|"
    seperator
    seperator
    puts "                                                           What Game would you like to play?                                      "
   seperator
   seperator
   @playersList.list_wallet
   seperator
   seperator
   seperator
   seperator
   seperator  
  end

end

# when 2
#   game = Dice.new(@playersList.playerList[select_player])
#   game.welcome
#   game.start_game()
#   welcome_method()
# end


casino = Casino.new
casino.start_casino

