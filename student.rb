=begin
Write a program which creates a class “Student” with the following Data Members rollNum, studName, mark1, mark2, mark3, totalMarks 
Methods setStudDetails() – which sets the values to all the data members except totalMarks. 
calculateTotal() - which calculate the totalMarks 
displayStudDetails() – which displays rollNum, studName and totalMarks 
Create a class StudentDemo to test the functionality of Student class.

Please define the variable names, classes, methods and all coding in ruby way of coding.
=end

class Student
    attr_accessor :roll_no, :student_name, :tamil_mark, :eng_mark, :maths_mark, :total_marks

    def set_student_details(roll_no, student_name, tamil_mark, eng_mark, maths_mark)
        @roll_no = roll_no
        @student_name = student_name
        @tamil_mark = tamil_mark
        @eng_mark = eng_mark
        @maths_mark = maths_mark
    end

    def calculate_total_marks
        @total_marks = @tamil_mark + @eng_mark + @maths_mark
    end

    def display_student_details
        puts "Student Roll#: #{@roll_no}", "Student Name: #{@student_name}", "Student Total Marks: #{@total_marks}"
    end
end

class StudentDemo
    print "Enter Your Roll No: "
    roll_no = gets.chomp.to_i

    print "Enter Your Name: "
    student_name = gets.chomp

    print "Enter Your Marks in Tamil: "
    tamil_mark = gets.chomp.to_i

    print "Enter Your Marks in English: "
    eng_mark = gets.chomp.to_i

    print "Enter Your Marks in Mathematics: "
    maths_mark = gets.chomp.to_i

    student = Student.new
    student.set_student_details(roll_no, student_name, tamil_mark, eng_mark, maths_mark)
    student.calculate_total_marks
    student.display_student_details
end
