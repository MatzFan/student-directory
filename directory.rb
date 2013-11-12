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
	puts 'Please enter the names of the students'
	puts 'To finish just hit return twice'
	students = [] # empty array
	name = gets.chomp
	while !name.empty? do
		students << {name: name, cohort: :november} # append new hash to array
		puts "Now we have #{students.size} students"
		name = gets.chomp
	end
	students # return the array
end

def print_header
  puts 'The students of my cohort at Makers Academy'
  puts '-------------------------------------------'
end

def print(students)
	students.each { |s| puts "#{s[:name]} (#{s[:cohort]} cohort)"  }
end

def print_footer(names)
  puts "Overall we have #{names.size} great students."
end

students = input_students
print_header
print(students)
print_footer(students)
