# frozen_string_literal: true

# Part 1

def sum(arr)
  return arr.sum
end


# uwu
def max_2_sum(arr)
  return arr.sort.reverse.push(0,0).first(2).sum
end

# chatGPT provided .map.with_index command, very nice, very nice. one line as all things should be.
def sum_to_n?(arr, number)
  return arr.size < 2 ? false : arr.map.with_index { |a, i| arr[i+1..-1].map { |b| a + b } }.flatten.include?(number)
end

# Part 2
# i used chatGPT as my google from here onwards because it was just better.

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(string)
  return !!( string =~ /^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
end

def binary_multiple_of_4?(string)
  return string =~ /^[01]+$/ && !!(("00" + string)[-2, 2] == "00")
end

# Part 3

# Object representing a book
# we could not define the class in one line. that is not uwu at all.
class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, "" unless isbn != "" && price > 0
    @isbn=isbn
    @price=price
  end
  def isbn
    return @isbn
  end
  def isbn=(value)
    @isbn = value
  end
  def price
    return @price
  end
  def price=(value)
    @price=value
  end
  def price_as_string
    return format("$%.2f", @price)
  end
end
