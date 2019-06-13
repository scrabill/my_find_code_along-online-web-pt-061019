require 'pry'

def my_find(collection) # The find method returns back the first item in the array that is true
  i = 0 # Counter
  while i < collection.length # Keep running while the counter is less than the number of items in the collection array
    if yield(collection[i]) # Pass the current item from the argument into the block, evaluate it, then return the value back
      return collection[i]
    end
    i = i + 1 # Increment counter by 1
  end
end
