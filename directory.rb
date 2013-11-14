require 'pry'

=begin
students = [
  {name: 'Bruce Steedman', cohort: :november},
  {name: 'James Brooke', cohort: :november},
  {name: 'Chis..', cohort: :november},
  {name: 'Hannah..', cohort: :november},
  {name: 'Lara Young', cohort: :november},
  {name: 'Jeremy Marer', cohort: :november},
  {name: 'Kennedy..', cohort: :november},
  {name: 'Simon Woolf', cohort: :november},
  {name: 'Tom..', cohort: :november},
  {name: 'Tom..', cohort: :november},
  {name: 'Giacomo..', cohort: :november},
  {name: 'Anath Abensour', cohort: :november},
  {name: 'Asta..', cohort: :november},
  {name: 'Kumi..', cohort: :november},
  {name: 'Nisar..', cohort: :november},
  {name: 'Georgi..', cohort: :november},
  {name: 'Peter Kristo', cohort: :november},
  {name: 'Jean-Baptiste..', cohort: :november}
  {name: 'Ken..', cohort: :november}
]
=end
class StudentDirectory

  MONTHS = Date::MONTHNAMES

  def initialize
    @students = []
  end

  attr_accessor :students

  $header = "The students of my cohort at Makers Academy"
  # student attributes is a hash; key is attribute name, value is default
  $student_attributes = {cohort: MONTHS[11], name: 'Unknown', hobby: 'None', country: nil}

  def input_students
  	puts "Please enter the details for each student"
  	print "To finish just hit return twice\n"
  	loop do
      puts 'Another?'
      another = gets.strip
      break if another =~/[Nn]/
      # call private method to input student data
      p @students
      @students << input_student_attributes
      puts "Now we have #{students.size} student" +
      (@students.size > 1 ? "s" : "")
    end
  end

  def print_header
    puts $header
    $header.size.times { print '-' }
    puts
  end

  def print_students(students)
  	students.each_with_index do |s, index|
      # cycle through each attribute hash & print value for each
      msg = ""
      $student_attributes.map { |k,v| msg += "#{s[k]} " }
  	  puts "#{index+1}. #{msg}".center($header.length)
  	end
  end

  def print_students_by_cohort(cohort)
    relevant_students = @students.select {|s| s[:cohort] == cohort}
    relevant_students.each_with_index do |s, index|
      puts "#{s[:cohort]} Cohort"
      puts
      msg = ""
      $student_attributes.map do |k,v|
        msg += "#{s[k]} " unless k == :cohort # excludes group attribute
      end
      puts "#{index+1}. #{msg}".center($header.length)
    end
  end

  def print_footer
    print "Overall we have #{@students.size} great students.\n"
  end

  private
  def input_student_attributes
    student = {}
    $student_attributes.each do |attribute, default| # elements are hashes
      puts "Enter #{attribute.capitalize}, just hit enter for default value: #{default}"
      input_value = gets.chomp
      if !input_value.empty?
        # first validate the input
        student[attribute] = check_input(attribute, input_value)
      else
        student[attribute] = default # if empty string use the default
      end
    end
    p student
    student # return the student
  end

  # Validates user input
  private
  def check_input(attribute, user_input)
    if attribute == :cohort
      loop do
        if MONTHS.include? user_input # check it is a valid month
          return user_input.to_sym
        end
        puts "Sorry, please enter a valid month"
        user_input = gets.chomp
      end
    end
    user_input
  end

end

dir = StudentDirectory.new
dir.input_students
dir.print_header
dir.print_students_by_cohort('November')
dir.print_footer
