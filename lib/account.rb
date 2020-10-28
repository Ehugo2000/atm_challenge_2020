require 'date'

class Account
    attr_accessor :pin_code
    attr_accessor :balance
    attr_accessor :account_status
    attr_accessor :exp_date
    STANDARD_VALIDITY_YRS = 5

    def initialize
        @pin_code = rand(1000..9999)
        @exp_date = set_expire_date
        @account_status = :active
    end

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def deactivate
        @account_status = :deactivated
    end



end