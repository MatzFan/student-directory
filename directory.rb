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

$header = "The students of my cohort at Makers Academy"
$student_attributes = [:name, :hobby]

def input_students
	puts "Please enter the details for each student"
	print "To finish just hit return twice\n"
	students = [] # empty array
	loop do
    puts 'Another?'
    another = gets.chomp
    break if another =~/[Nn]/
    new_student = {cohort: :november}
    # call private method to input student data
    student = input_student_attributes(new_student)
    students << student
    puts "Now we have #{students.size} students"
  end
	students # return the array
end

def print_header
  puts $header
  $header.size.times { print '-' }
  puts
end

def print_students(students)
	students.each_with_index do |s, i|
    st = ""
    $student_attributes.each { |a| st += "#{s[a]} " }
	  puts "#{i+1}. #{st} (#{s[:cohort]} cohort)".center($header.length)
	end
end

def print_footer(names)
  print "Overall we have #{names.size} great students.\n"
end

private
def input_student_attributes(student)
  $student_attributes.each do |a|
    puts "Enter #{a.capitalize}"
    value = gets.chomp
    student[a] = value # adds new attribute and value pair to studnent hash
  end
  student
end

students = input_students
print_header
print_students(students)
print_footer(students)
