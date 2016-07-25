def add(x,y)
  x + y
end 

def subtract(x,y)
  x - y
end 

def sum(array)
  if array == []
    return 0
  else 
    sum = 0
    array.each {|num| sum += num}
    sum
    end 
end


def multiply(*numbers)
  result = 1
  numbers.each { |n| result = result * n }
  result
end


exponent = Proc.new do |number|
  number ** number 
end 

def factorial(number)
  (1..number).inject(:*)
end 