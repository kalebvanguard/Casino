require.relative 'card' #one directory containing all the files 



class MainMenu
    attr_accessor :main_dishes
  
    def main_dishes
      @main_dishes = [
        { name: "brisket", calories: "300", price: 18, dish_type: "main dish" },
        { name: "ribs", calories: "400", price: 17, dish_type: "main dish" },
        { name: "spaghetti", calories: "200", price: 10, dish_type: "main dish" },
        { name: "feijoada", calories: "350", price: 18, dish_type: "main dish" },
        { name: "ice cream", calories: "100", price: 3, dish_type: "side dish"},
        { name: "brazilian cheese balls", calories: "200", price: 4, dish_type: "side dish" },
        { name: "fries", calories: "200", price: 2, dish_type: "side dish" },
      ] 
    end
  
    def side_dishes
      @side_dishes = [
        { name: "ice cream", calories: "100", price: 3 },
        { name: "brazilian cheese balls", calories: "200", price: 4 },
        { name: "fries", calories: "200", price: 2 },
      ]
    end
  
  end
  
  
  class LunchLadyApp < MainMenu
  attr_accessor :lunch_menu, :main_root_menu
  
  def initialize
    @shopping_cart = []
    @amount_due = 0
    @wallet = 10
    @money_copy = @wallet
  end
  
    def main_root_menu
  
  
      
      puts "-- Welcome to Lunch Lady --"
      puts ""
      puts "Select what you would like to do:"
      puts ""
      puts "1) View Menu"
      puts "2) View Wallet Balance"
      puts "3) Add $ to Wallet"
      puts "4) View Order"
      puts "5) Submit Order"
      puts "6) Exit"
  
      user_selection = gets.strip.upcase
  
      case user_selection
      when "1", "view menu"
        lunch_menu
      when "2", "wallet balance", "balance"
        wallet_balance # go to "wallet_balance method"
      when "3", "add $", "$", "wallet"
        add_to_wallet # go to "add_to_wallet" method
      when "4", "view order"
        view_order # go to "view_order" method
      when "5", "submit order", "submit"
        submit_order # go to "submit_order" method
      when "6", "Exit".upcase, "E"
        puts "Thanks for eating at Lunch Lady!  Come again soon!"
      else
        puts "Invalid choice, try again"
        main_root_menu
      end
  
    end
  
    def lunch_menu
      puts "-- Lunch Lady Menu --"
      puts ""
      puts "-- Main Dishes --"
  
      # !need a way to select certain items in an array by dish_type to select between main and side dish
      main_dishes.each_with_index do |main_dish, index|
          puts "#{index + 1}) #{main_dish[:name]} - $#{main_dish[:price]}".upcase
      end
  
      puts ""
      #puts "-- Side Dishes --"
  
      #side_dishes.each_with_index do |side_dish, index|
      #  puts "#{index + 1}) #{side_dish[:name]} - $#{side_dish[:price]}".upcase
      # end
      puts "N) View Nutritional Facts".upcase
    
      puts ""
      puts "Q) Exit".upcase
      puts ""
      puts "Please choose a menu item by typing in the number"
      
      @menu_choice = gets.strip.upcase
  
      # if @menu_choice.include? "Q" or "E"
      #   main_root_menu
      # elsif @menu_choice.is_a? Integer
      #   @shopping_cart << @main_dishes[@menu_choice]
      #   puts ""
      #   puts "Your Shopping cart now contains:"
      #   puts @shopping_cart
      #   puts "" 
      #   add_more_items
      # else
      #   puts "Not a valid choice, please try again"
      #   main_root_menu
      # end
      case @menu_choice
      when "1", "2", "3", "4", "5", "6", "7", "8", "9"
        @shopping_cart << @main_dishes[@menu_choice.to_i - 1]
        puts ""
        puts "Your Shopping cart now contains:"
        puts ""
        
        @shopping_cart.each_with_index do |cart, index|
        puts "#{cart[:name]} - $#{cart[:price]}".upcase
        end
        
        puts ""
        
        @total_due = @shopping_cart.inject(0) {|sum, hash| sum + hash[:price]}
        puts "Total due: $#{@total_due}"
        puts "" 
        
        add_more_items 
      when "N", "Nutrition".upcase
        puts "-- Nutrition Facts --".upcase
          puts ""
        @main_dishes.each_with_index do |dish, index|
          puts "#{dish[:name]} - #{dish[:calories]} calories"
        end
        puts ""
        main_root_menu
      when "QUIT", "Q", "EXIT", "E"
        puts "Thank you for nothing"
        main_root_menu
      else
        puts "Not a valid choice, please try again"
        main_root_menu
      end
    end
  
    def add_more_items
      puts ""
      puts "Would you like to add more menu items?"
      print ">"
  
      more_items_choice = gets.strip.upcase
  
      if more_items_choice.include? "Y"
        lunch_menu
      else
        main_root_menu
      end
    end
  
    def view_order
      puts ""
      puts "Your order now contains:"
      puts ""
  
      @shopping_cart.each_with_index do |cart, index|
      puts "#{cart[:name]} - $#{cart[:price]}"
       end
  
      puts ""
  
      @total_due = @shopping_cart.inject(0) {|sum, hash| sum +hash[:price]}
      puts "Total due: $#{@total_due}"
      puts "" 
  
      main_root_menu
    end
  
    def wallet_balance
      puts ""
      puts "Your current balance is: $#{@money_copy}"
      puts ""
  
      main_root_menu
    end
  
    def add_to_wallet
      puts "How much money would you like to deposit into your Wallet?"
  
      new_money = gets.to_i
      @money_copy = (@money_copy += new_money)
      
      puts ""
      puts "You now have $#{@money_copy}"
      puts ""
      
      main_root_menu
    end
  
    def submit_order
      if @money_copy >= @total_due
        @money_copy = @money_copy -= @total_due
        
        puts ""
        puts "Your order has been submitted"
        puts ""
        puts "You were charged a total of $#{@total_due}"
        puts ""
        
        @shopping_cart.clear
        puts "Your Wallet balance is now: $#{@money_copy}"
        puts ""
        
        main_root_menu
      else
        puts "You do not have enough money in your Wallet to purchase this meal, you chump!"
        puts "You need to add more money to your Wallet or remove items from your order"
        main_root_menu
      end
    end
  
  
  end
  
  
  menu = MainMenu.new
  appInstance = LunchLadyApp.new
  appInstance.main_root_menu
  