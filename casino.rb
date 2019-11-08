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

require_relative 'card' 
require_relative 'deck'
require_relative 'dice'

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

class Player
  attr_accessor :name, :bankroll

  def initialize(name)
    @name = name
    @min_amount = 100
    @max_amount = 1000000
    start_amount = rand(@min_amount..@max_amount)
    @bankroll = Wallet.new(start_amount)
  end
end

class PlayerList
  attr_accessor :playerList
  def initialize()
    @playerList = []
  end
  def addPlayer(player)
    @playerList.push(player)
  end
  def list_players()
    id = 1
    @playerList.each do |player|
      print "#{id}) "
      puts player.name
      id += 1
    end
  end
  def list_wallet
    @playerList.each do |player|
      puts "#{player.name}'s balance is: $#{player.bankroll.wallet}"
    end
  end
end

class Casino
  def initialize
    @playersList = PlayerList.new
  end

  def start_casino
    puts "Welcome to the Casino!"
    new_player
    welcome_method
  end

  def new_player
    puts "Please input a player name: "
    player_name = gets.strip.to_s
    player = Player.new(player_name)
    @playersList.addPlayer(player)
  end

  def select_player
    if @playersList.playerList.length > 1
      puts "Which player would like to play?"
      @playersList.list_players()
      selected_player = gets.strip.to_i
      return selected_player - 1
    else
      return 0
    end
    
  end
  
  def welcome_method
    while true
      menu_options
      user_game_choice = gets.to_i
      case user_game_choice
      when 1
        game = Card.new(@playersList.playerList[select_player])
        game.start_game()
      when 2
        game = Hi_low.new(@playersList.playerList[select_player])
        game.start_game()
      when 3
        game = Roulette.new(@playersList.playerList[select_player])
        game.start_game()
      when 4
        new_player
      when 5
        exit
      end
    end
  end

  def menu_options
    @playersList.list_wallet
    puts "What Game would you like to play?"
    puts "\n"
    puts "1) Card"
    puts "2) Highs / Lows"
    puts "3) Roulette"
    puts "4) New Player"
    puts "5) Quit"
  end
end

casino = Casino.new
casino.start_casino

