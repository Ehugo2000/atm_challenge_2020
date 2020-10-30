# Atm_challenge

## The code

The application is written in Ruby 2.7.0 using RSpec as testing framework. The application allows the user to create an account, a person and an atm via 3 classes (atm.rb, account.rb, person.rb) and deposit and withdraw cash from a virtual atm machine. The user can create and manage several persons’ and atms’ and personalize features like cash, account balance and pin code.
This is a back-end application running in IRB.

## Dependencies

RSpec 3.9 via source (https://rubygems.org)

## Setup

1. Clone the repo below to your local folder.
Repo:(https://github.com/Ehugo2000/atm_challenge_2020.git)

2. Open the terminal and cd to the atm_challenge_2020 folder.

3. Start IRB in your terminal and load Date class and the ruby files.
```ruby
require 'date'
load './lib/atm.rb'
load './lib/account.rb'
load './lib/person.rb'
```

## Instructions

1. Create a person, account and an atm.
 ```ruby
person = Person.new(name: 'Tom', cash: 1000)
atm = Atm.new
person.create_account
#<Person:0x00007ff5e496efb0 @name="Tom", @cash=1000, @account=#<Account:0x00007ff5e40e6730 @balance=0, @pin_code=6896, @exp_date="10/25", @account_status=:active, @owner="Tom">> 
#<Atm:0x00007ff5e4130380 @funds=1000> 
```
2. Deposit cash into account.
```ruby
person.deposit(1000)
#<Person:0x00007ff5e496efb0 @name="Tom", @cash=0, @account=#<Account:0x00007ff5e40e6730 @balance=1000, @pin_code=6896, @exp_date="10/25", @account_status=:active, @owner="Tom">> 
```

## Acknowledgements

Project instructions from Craft Academy: (https://learn.craftacademy.co/courses/645199/lectures/11543673)  
Editor: VSC (https://code.visualstudio.com/)  
Programming language: (https://www.ruby-lang.org/en/documentation/installation/)  
Testing framework: (https://rspec.info/)  
Gems: (https://rubygems.org)  
Craft Academy course material: (https://learn.craftacademy.co/courses/enrolled/645199)  

## Personal Acknowledgements

Thanks to *Noel Ryan, Emma-Maria Thalen, Reaksa Khourn* and *Sanne Lindholm* for helping us!

## Upadate and Improvements plans

- Add multiple currencies to Atm class
- Create dynamic expiration dates for debit cards depending on person
- Add interest rate to balance in account
- Modify withdraw method of Atm class to increase cash in a perosn's pocket
- Update person_spec.rb to test each case of insufficient funds in account, insufficient funds in Atm and wrong pin

## License

The MIT License (MIT)