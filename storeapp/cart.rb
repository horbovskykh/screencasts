class Cart
  
  attr_reader :items
  
  include ItemContainer
  
  def initialize
    @items = [] #@items = Array.new
  end
 
end