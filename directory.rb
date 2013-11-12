students = [
  'Bruce Steedman',
  'James Brooke',
  'Chis..',
  'Hannah..',
  'Laura..',
  'Jeremy Marer',
  'Kennedy..',
  'Simon..',
  'Tom..',
  'Tom..',
  'Giacomo..',
  'Annette..',
  'Asta..',
  'Kumi..',
  'Nisar..',
  'Georgi..',
  'Peter..',
  'Jean-Baptiste..'
]

def print_header
  puts 'The students of my cohort at Makers Academy'
  puts '-------------------------------------------'
end

def print(names)
	puts names.each { |name| puts name }
end

def print_footer(names)
  puts "Overall we have #{names.size} great students."
end

print_header
print(students)
print_footer(students)
