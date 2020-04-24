class BankAccount
  attr_reader :name
  attr_accessor :balance, :status
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(num)
    @balance += num
  end 

  def display_balance
    "Your balance is $#{self.balance}."
  end 

  def valid?
    if (@balance > 0) && (status == "open")
      return true
    end 
    false
  end 

  def close_account 
    @status = "closed"
  end 
end
