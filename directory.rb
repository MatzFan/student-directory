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
	print "Please enter the names of the students\n"
	print "To finish just hit return twice\n"
	students = [] # empty array
	name = gets.chomp
	while !name.empty? do
		students << {name: name, cohort: :november} # append new hash to array
		print "Now we have #{students.size} students"
		name = gets.chomp
	end
	students # return the array
end

def print_header
  print "The students of my cohort at Makers Academy\n"
  print "-------------------------------------------\n"
end

def print_students(students, start_letter) # note: overides String.print
	students.each_with_index do |s, i|
	  if s[:name][0] == start_letter 
	    print "#{i+1}. #{s[:name]} (#{s[:cohort]} cohort)\n"
	  end
	end
end

def print_footer(names)
  print "Overall we have #{names.size} great students.\n"
end

students = input_students
print_header
print_students(students, "A")
print_footer(students)
