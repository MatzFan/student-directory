=begin
students = [
  {name: 'Bruce Steedman', cohort: :november},
  {name: 'James Brooke', cohort: :november},
  {name: 'Chis..', cohort: :november},
  {name: 'Hannah..', cohort: :november},
  {name: 'Laura..', cohort: :november},
  {name: 'Jeremy Marer', cohort: :november},
  {name: 'Kennedy..', cohort: :november},
  {name: 'Simon..', cohort: :november},
  {name: 'Tom..', cohort: :november},
  {name: 'Tom..', cohort: :november},
  {name: 'Giacomo..', cohort: :november},
  {name: 'Annette..', cohort: :november},
  {name: 'Asta..', cohort: :november},
  {name: 'Kumi..', cohort: :november},
  {name: 'Nisar..', cohort: :november},
  {name: 'Georgi..', cohort: :november},
  {name: 'Peter..', cohort: :november},
  {name: 'Jean-Baptiste..', cohort: :november}
]
=end

def input_students
  student_attributes = [:name, :hobby]
	print "Please enter the details for each student\n"
	print "To finish just hit return twice\n"
	students = [] # empty array
	loop do
    puts 'Name?'
    name = gets.chomp
    break if name.empty?
    students << {name: name, cohort: :november} # append new hash to array
    puts "Now we have #{students.size} students"
  end
	students # return the array
end

def print_header
  print "The students of my cohort at Makers Academy\n"
  print "-------------------------------------------\n"
end

def print_students(students, name_length) # note: overides String.print
	students.each_with_index do |s, i|
	  #if s[:name].length < name_length # only names shorter than length 
	    print "#{i+1}. #{s[:name]} (#{s[:cohort]} cohort)\n"
	  #end
	end
end

def print_footer(names)
  print "Overall we have #{names.size} great students.\n"
end

students = input_students
print_header
print_students(students, 5)
print_footer(students)
