#write your code here

def add (a,b)
  add = a + b
end

def subtract (a,b)
  subtract = a - b
end

#sum = []
#$suma = 0
#def sum.each { |number|$suma += number }
#end

def sum(numbers)
  numbers.inject(0){|total, number| total+number}
end