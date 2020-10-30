require 'date'

class Account
    attr_accessor :pin_code, :balance, :account_status, :exp_date, :owner
    STANDARD_VALIDITY_YRS = 5

    def initialize(attrs = {})
        @balance = 0
        @pin_code = rand(1000..9999)
        @exp_date = set_expire_date
        @account_status = :active
        set_owner(attrs[:owner])
    end

    def set_expire_date
        Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def deactivate
        @account_status = :deactivated
    end

    private
    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise "An Account owner is required"
    end

end