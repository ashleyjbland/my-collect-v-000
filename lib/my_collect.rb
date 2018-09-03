require 'pry'

def my_collect(languages)
  counter = 0
  upcase_collection = [ ]
  while counter < languages.length
    upcase_collection << yield(languages[counter])
    counter += 1
  end
  upcase_collection
end

my_collect(['ruby', 'javascript', 'python', 'objective-c']) do |lang|
  lang.upcase
end

#binding.pry

students = ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']

def my_collect(students)
  counter = 0
  first_names = []
  while counter < students.length
    first_names << yield(students[counter])
    counter += 1
  end
  first_names
end

my_collect(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']) do |student|
  student.split(" ").first
end
