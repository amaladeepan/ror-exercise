=begin
Write a Class for date operations, the input can be date of format Date Type or else string, also conversion type.
Example :
Input : it should accept string type, date type, date time etc
Various output formats: "%B %-d, %Y" # "October 2, 2012"
=end

require 'time'

def format_datetime(time, format)
    if format.casecmp("ist") == 0 
        format_string = "%d/%m/%Y %H:%M:%S"
    elsif format.casecmp("est") == 0 || format.casecmp("pdt") == 0
        format_string = "%Y-%m-%d %H:%M:%S"
    elsif format.casecmp("pst") == 0
        format_string = "%Y/%m/%d %H:%M:%S"
    end
    return time.strftime(format_string)
end


print "Enter the Date & Time: "
date_time = gets.chomp
print "Format you want to display: "
format = gets.chomp

#set default
date_time = date_time.empty? ? Time.now : Time.parse(date_time)
format = format.empty? ? "PST" : format

print "DateTime: ", format_datetime(date_time, format)

