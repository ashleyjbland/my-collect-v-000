def my_collect(collection)
  counter = 0
  upcase_collection = []
  while collection.length < counter
    upcase_collection << yield(collection, lang)
    counter += 1
  end
  upcase_collection
end
    
my_collect(collection) do |lang|
  lang.upcase
end