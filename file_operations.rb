=begin
Write a program to read a file and do below operations
a) replaces all numbers to words (eg 1 to one)
b) Write the replaced output to a new file
=end

input_file = File.open("input.txt")
output_file = File.open("output.txt", 'w')

input_file.each_line do |line|
    line.each_char do |char|
        case char
            when "1"
                output_file.write(" one ")
            when "2"
                
                output_file.write(" two ")
            when "3"
                
                output_file.write(" three ")
            when "4"
                
                output_file.write(" four ")
            when "5"
                
                output_file.write(" five ")
            when "6"
                
                output_file.write(" six ")
            when "7"
                
                output_file.write(" seven ")
            when "8"
                
                output_file.write(" eight ")
            when "9"
                
                output_file.write(" nine ")
            when "0"
                output_file.write(" zero ")
            else
                output_file.write(char)
        end
    end
end

input_file.close
output_file.close
#puts File.readlines("output.txt")