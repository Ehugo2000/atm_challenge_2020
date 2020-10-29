require './lib/account.rb'

class Person 

    attr_accessor :name, :cash, :account
   
    def initialize(attrs = {})
        set_name(attrs[:name])
        @cash = attrs[:cash]
        @account
    end


    def set_name(obj)
        obj == nil ? raise_error : @name = obj
    end

    def raise_error 
        raise 'A name is required'
    end

    def create_account
        @account = Account.new({owner: name})
    end

    def deposit(amount)
        if ( @account == nil )
            missing_account
        else
            @account.balance += amount
            @cash -= amount
        end
    end

    def missing_account
        raise 'No account present'
    end

    def withdraw(argument)
        person.withdraw(atm: atm3)
        amount = argument[:amount]
        
        if argument[:atm] == nil then
            raise 'An ATM is required'
        elsif
            @account.balance < amount
            {status: false, message: 'insufficient funds in account', date: Date.today}
        elsif
            argument[:atm].funds < amount
            { status: false, message: 'insufficient funds in ATM', date: Date.today}
        elsif
            argument[:pin] != @account.pin_code
            {status: false, message: 'wrong pin', date: Date.today}
        else
            @cash += amount
            @account.balance -= amount
            argument[:atm].funds -= amount
        end
    end
    
end