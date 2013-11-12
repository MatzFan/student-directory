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
  {name: 'Anath Abensour', cohort: :november},
  {name: 'Asta..', cohort: :november},
  {name: 'Kumi..', cohort: :november},
  {name: 'Nisar..', cohort: :november},
  {name: 'Georgi..', cohort: :november},
  {name: 'Peter..', cohort: :november},
  {name: 'Jean-Baptiste..', cohort: :november}
]
=end

$student_attributes = [:name, :hobby]

def input_students
	puts "Please enter the details for each student"
	print "To finish just hit return twice\n"
	students = [] # empty array
	loop do
    $student = {cohort: :november}
    puts 'Another?'
    another = gets.chomp
    break if another =~/[Nn]/
    $student_attributes.each do |a|
      puts "Enter #{a.capitalize}"
      value = gets.chomp
      $student[a] = value
    end
    students << $student
    puts "Now we have #{students.size} students"
  end
	students # return the array
end

def print_header
  header = "The students of my cohort at Makers Academy"
  puts header
  header.size.times { print '-' }
  puts
end

def print_students(students) # note: overides String.print
	students.each_with_index do |s, i|
    st = ""
    $student_attributes.each { |a| st += "#{s[a]} " }
	  puts "#{i+1}. #{st} (#{s[:cohort]} cohort)"
	end
end

def print_footer(names)
  print "Overall we have #{names.size} great students.\n"
end

students = input_students
print_header
print_students(students)
print_footer(students)
