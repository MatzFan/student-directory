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
# first, we print all student names
puts 'The students of my cohort at Makers Academy'
puts '-------------------------------------------'
puts students.each { |s| puts s }
# finally, we print the total number of students
print "Overall we have #{students.size} great students."
