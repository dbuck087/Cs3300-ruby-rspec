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

#method to check if any two members of an array sum to equal another number
def sum_to_n? (array, num)
  #check if any 2 permutations exists such that a+b == num
  if array.permutation(2).any? {|a,b| a+b==num}
    return true
else
    return false
  end
end

# Part 2

#method that adds the string "Hello, " before 
def hello(name)
  return "Hello, "+name
end

#method that checks the first letter and uses a regex to check if it is a vowel or not.
def starts_with_consonant? s
  #use regex of consonants to check for match
  if /[b-df-hj-np-tv-z]/i.match(s[0]) != nil
    return true
  #return false if no match is found
  else
    return false
  end
end

# Ran out of time and needed to focus on other work
def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

#requested class
class BookInStock
  #constructor
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN cannot be empty.") unless isbn.empty? == false
    raise ArgumentError.new("Price must be greater than 0.") unless price > 0
    @isbn = isbn
    @price = price
  end

  #getters and setters
  attr_accessor :isbn
  attr_accessor :price

  #method declaration that formats the books price
  def price_as_string
    string = "$%.2f" % price.to_s
  end

end
