$LOAD_PATH.unshift "./lib"
require 'pyne/bank/bank_controller'

class Main

  def start
    controller = Pyne::Bank::BankController.new

    controller.print_balances
    controller.print_transactions
  end
 
end

Main.new.start
