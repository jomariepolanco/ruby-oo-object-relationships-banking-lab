class BankAccount
    attr_reader :name, :balance, :status
    attr_writer :balance, :status

    def initialize(name, balance = 1000, status = "open")
        @name = name
        @balance = balance 
        @status = status 
    end

    def deposit(amount)
        self.balance += amount 
    end

    def display_balance
        return "Your balance is $#{self.balance}." 
    end

    def valid?
       @status == "open" && @balance > 0 
    end

    def close_account
        @status = "closed"
    end
end
