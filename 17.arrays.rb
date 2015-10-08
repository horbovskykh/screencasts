names = ["Bob", "James", "John"]
p names
puts names[0]
puts names[1]
puts names[2]
puts names.class
names.push "Roman"
p names

names.pop #delete last element
names.shift #delete first element
p names