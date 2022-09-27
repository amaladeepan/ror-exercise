=begin
Write a program to measure the electricity consumption charges
a) For the first 100 units - 6rupees per unit
b) For the next 200 units - 11rupees per unit
c) Beyond 300 units - 15rupees per unit

All users are charged a minimum of Rs.50.00. 
if the total amount is more than Rs.300.00 than additional surcharge of 15% should be added, by default 5% applicable.

The program should ask for number of user details based on number it should ask name and no of units, 
calculate the charges respectively and store in a array of hash and display the details.
=end


def calculate_bill_amount(consumed_units)
    minimum_charge = 50
    surcharge_percent = 5
    rate_first_100 = 6
    rate_next_200 = 11
    rate_beyond_300 = 15
    if consumed_units <= 100
        bill_amount = consumed_units * rate_first_100
    elsif consumed_units > 100 && consumed_units <= 300
        bill_amount = (100*rate_first_100) + (consumed_units-100)*rate_next_200
    else
        bill_amount = (100*rate_first_100) + (200*rate_next_200) + (consumed_units-300)*rate_beyond_300
    end
    
    #Minimum service charge
    bill_amount = bill_amount > minimum_charge ? bill_amount : minimum_charge
    
    #surcharge calculation
    surcharge_percent = bill_amount > 300 ? 15 : surcharge_percent

    bill_amount = bill_amount + ((bill_amount * surcharge_percent)/100)
    return bill_amount
end



print "Number users: "
users = gets.chomp.to_i
user_details = []

users.times do
    print "User Name:"
    user_name = gets.chomp
    print "Number of consumed units:"
    consumed_units = gets.chomp.to_i
    bill_amount = calculate_bill_amount(consumed_units)
    user_details.push("User Name"=>user_name,"Consumed Units"=>consumed_units,"Total Bill Amount"=>bill_amount)
end
puts user_details