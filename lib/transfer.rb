class Transfer
  # your code here
  attr_reader :sender, :receiver, :status, :amount 
  attr_writer :sender, :receiver, :status, :amoutnt

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @status = "pending"
    @amount = amount 
  end

  def valid?

  end

  def execute_transaction

  end

  def reverse_transfer

  end
end
