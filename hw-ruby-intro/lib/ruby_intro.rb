# When done, submit this entire file to the autograder.
# I made use of my previous hw from 3300 to resolve this part.
# Joshue Torres Azanza CS 5300

# Part 1
def sum arr
  i = 0
  arr.each {|j| i+= j} #sums the array
  i
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  i = arr.sort #sort array
  i[-1] + i[-2] #makes the sum max
end 

def sum_to_n? arr, n
  return false if arr.empty? or arr.length == 1
  i = Hash.new #creates a new hash 
  arr.each{|x|  #checks for the hash key
    if i.key? x
      return true
    else
      i[n - x] = n	
    end }
  return false
end

# Part 2
def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  !!(s =~ /^[a-z]+.*/i) && !!(s =~ /^[^(a|e|i|o|u)]+/i)
end

def binary_multiple_of_4? s
  return false unless s =~ /^[0-1]+$/
  s.to_i(2) % 4 == 0 
end

# Part 3
class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError, "no legal argument" if isbn.empty?  or price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%2.2f", @price)
  end
end