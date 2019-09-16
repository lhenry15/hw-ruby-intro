# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  var = 0
  for i in arr
    var = var + i
  end
  return var
end

def max_2_sum arr
  if arr.length == 0 #if empty
    return 0
  elsif arr.length == 1 #if only 1 element
    return arr[0]
  else #regular case
    return arr.sort[arr.length-1] + arr.sort[arr.length-2]
  end
end

def sum_to_n? arr, n
  array = arr.sort
  left = 0
  right = array.length - 1

  while left < right
    sum = array[left] + array[right]
    return true if sum == n

    if sum < n
      left += 1
    else
      right -= 1
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length>0 && s[0] =~ /[A-Za-z]/ && !(s[0] =~ /[AaEeIiOoUu]/)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s.empty? #checks if s is empty
    return false
  else
    bin = s
    s = s.gsub("0","")
    s = s.gsub("1","")
  end
  if !s.empty? #checks if binary
    return false
  elsif bin.to_i(2) % 4 != 0 #checks if not divisible by 4
    return false
  end
  return true
end

# Part 3

class BookInStock
 attr_accessor :isbn, :price
  def initialize(isbn="", price)
    if isbn == ""
      raise ArgumentError
    else
      @isbn = isbn
    end

    if price <= 0
      raise ArgumentError
    else
      @price = price
    end
  end

  def price_as_string
    return "$" + ('%.2f' % price).to_s
  end
end
