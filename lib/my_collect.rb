require 'pry'

languages = ['ruby', 'javascript', 'python', 'objective-c']

def my_collect(languages)
  counter = 0
  upcase_collection = []
  while languages.length < counter
    upcase_collection << yield(languages)
    counter += 1
  end
  upcase_collection
end

my_collect(languages) do |language|
  lang.upcase
end
