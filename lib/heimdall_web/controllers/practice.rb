#  this is where your code to calculate the check digit should go

#       Suppose that you want to find the check digit of UPC- A number 72641217542. 

num = 7264121754

# From the right to the left, start with odd position, assign the odd/even position to each digit. 

a = num.to_s
b = a.split('')
c = b.reverse()

puts "My reversed array so I can give the proper index from right to left is: #{c}"
puts " "

d = []
e = []

c.each_with_index do |item,index| 
  if (index % 2 == 0) then 
    e.push(item) 
  else 
    d.push(item)
  end
end
  
puts "My array of positive index numbers is #{e}"
puts "My array of negative index numbers is #{d}"
puts " "

# Sum all digits in odd position and multiply the result by 3: (7+6+1+1+5+2)*3=66 
f = e.map(&:to_i)
g = 0
f.each do |i|
  g += i
end
h = g * 3

puts "My odd index math is #{h}"
puts ""

# Sum all digits in even position: (2+4+2+7+4)=19 
j = d.map(&:to_i)
k = 0
j.each do |i|
  k += i
end

puts "My odd index math is #{k}"
puts ""

# Sum the results of step three and four: 66+19=85 
l = h + k

puts "The sum of the positive and negative calculations is: #{l}"
puts ""

# Divide the result of step four by 10. 
m = l % 10

puts "Don't forget to get your modulo by 10 result: #{m}"
puts ""

# The check digit is the number which adds the remainder to 10. In our case, divide 85 by 10 we get the remainder 5. The check digit then is the result of >10- 5=5. If there is no remainder then the check digit equals zero.
if (l % 10 != 0)
  n = 10 -  m 
  puts "Your Check Number is #{n}"
  puts ""

else 
  puts "Your Check Number is 0"
end 
  