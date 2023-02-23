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

  if (array.empty? || array.length() >= 2)
    return false

  elsif array.permutation(2).any? {|a,b| a+b==num}
    return true
    
  end
end

# Part 2

def hello(name)
  base = "Hello, "
  return base+name
end

def starts_with_consonant? s
  bool = false
  if /[b-df-hj-np-tv-z]/i.match(s[0]) != nil
    bool = true
    return bool
  else
    return bool
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN cannot be empty.") unless isbn.empty? == false
    raise ArgumentError.new("Price must be greater than 0.") unless price > 0
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    string = "$" + price.round(2).to_s
  end
  
end
