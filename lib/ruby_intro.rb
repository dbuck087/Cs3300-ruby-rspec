# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # calls built in sum() method of the array object and returns the value
  return array.sum()
end

def max_2_sum(array)
#built in sort method for arrays. the '!' command overwrites orignal array with new sorted array
  array.sort!

  #check if array is empty, if so return 0
  if array.empty?
    sum = 0
  #check if array has only one entry, if so return that one entry.  
  elsif array[-2] == nil
    sum = array[-1]
  #if neither of the previous are true than add the last two elements in the array and return the value
  else
    sum = array[-1] + array[-2]
  end

  return sum
end

def sum_to_n? (array, num)
  bool = false

  if (array.empty? == false and array[-2] != nil)
    
    array.each do |i|
      array.each do |j|
        if (array[i] + array[j]) == num
          bool = true
        end
      end
    end



    bool = true
  end

  return bool
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
