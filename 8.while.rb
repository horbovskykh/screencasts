a = if ARGV[0]
  ARGV[0].to_i
else
  a = 1
end

while a < 10
  a += 1
  puts "'a' variable is " + a.to_s
  sleep 0.5
end