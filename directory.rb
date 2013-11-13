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
# student attributes implemented as hash; key is attribute name, value is default
$student_attributes = {cohort: 'November', name: 'Unknown', hobby: 'None'}
def input_students
	puts "Please enter the details for each student"
	print "To finish just hit return twice\n"
	students = [] # empty array
	loop do
    puts 'Another?'
    another = gets.chomp
    break if another =~/[Nn]/
    new_student = {}
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
    # cycle through each attribute hash & print value for each
    $student_attributes.each { |k,v| st += "#{s[k]} " }
	  puts "#{i+1}. #{st} (#{s[:cohort]} cohort)".center($header.length)
	end
end

def print_footer(names)
  print "Overall we have #{names.size} great students.\n"
end

private
def input_student_attributes(student)
  $student_attributes.each do |k,v| # elements are hashes
    puts "Enter #{k.capitalize}"
    value = gets.chomp
    student[k] = value # adds new attribute and value pair to studnent hash
  end
  student
end

students = input_students
print_header
print_students(students)
print_footer(students)
