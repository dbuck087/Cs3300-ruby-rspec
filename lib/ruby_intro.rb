# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  return array.sum()
end

def max_2_sum(array)
  array = array.sort()
  sum = 0

  if array.empty?()
    sum = 0
  elsif array[-1] != nil && array[-2] == nil
    sum = array[-1]
  else
    sum = array[-1] + array[-2]
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
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
