#9 episode
=begin
def hello_world(name)
  puts 'Hello world'
  puts 'My name is ' + name
end

name = if ARGV[0]
  ARGV[0]
else
  name = 'Huhuhu'
end

hello_world(name)
=end

#10 episode
=begin
def hello_world(first_name='', family_name='')
  puts 'Hello world'
  unless family_name == '' && first_name == ''
    puts 'My name is ' + first_name + ' ' + family_name
  end
end

hello_world()
hello_world('Slava', 'Horbov')
=end

#11 episode
def hello_world(first_name='', family_name='')
  greeting = "Hello world\n"
  if family_name != '' || first_name != ''
    greeting += 'My name is ' + first_name + ' ' + family_name
  end
  greeting #comment this row and see what happened 
end

#Method return automatically last variable - it means that world "return" can be skipped
#In Ruby return last variable from last row in method

puts hello_world('Slava')
puts hello_world