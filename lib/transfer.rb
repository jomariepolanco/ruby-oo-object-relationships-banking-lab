require 'pry'

class Transfer
  # your code here
  attr_reader :sender, :receiver, :status, :amount 
  attr_writer :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @status = "pending"
    @amount = amount 
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    # binding.pry
    # if self.amount > sender.balance 
    #   if sender.status == "closed"
    #   # self.status = "pending"
    #   return "Transaction rejected. Please check your account balance."

    # elsif sender.balance > self.amount
    #   receiver.balance += self.amount
    #   sender.balance -= self.amount
    #   self.amount = 0
    #   self.status = "complete"
    if sender.balance > self.amount && valid? == true && self.status == "pending"
      # binding.pry
      receiver.balance += amount
      sender.balance -= amount
      amount = 0
      self.status = "complete"
    else
      self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end

  end

  def reverse_transfer
    if receiver.balance > @amount && valid? == true && self.status == "complete"
    # binding.pry
    self.status = "reversed"
    receiver.balance -= @amount
    sender.balance += @amount
    
      # if self.status == "complete"
      # binding.pry
    #   self.amount.reset
    end


  end
  # binding.pry
end
