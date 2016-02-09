class Order

  attr_reader :items, :placed_at, :dif
  
  include ItemContainer
  
  def initialize
    @items = Array.new
	#...
  end

  def place
    @placed_at = Time.now
	thr = Thread.new do
	  sleep (1)	
	end
	print "loading"
	while (thr.alive?)
      print "."
      sleep (1)
	end
	
	puts ""
	ending = Time.now
    @dif = ending - @placed_at
  end

  
end