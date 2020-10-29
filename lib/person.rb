require './lib/account.rb'
require './lib/atm.rb'

class Person 

    attr_accessor :name, :cash, :account
   
    def initialize(attrs = {})
        set_name(attrs[:name])
        @cash = 0
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

    def create_Atm
        atm = Atm.new
    end

    def withdraw(argument)
        if argument[:atm] == nil then
            raise 'An ATM is required'
        else
            amount = argument[:amount]
            pin_code = argument[:pin]
            account = argument[:account]
            
            #amount = argument[:amount]
            #@cash += amount
            #@account.balance -= amount
        end
    end
end