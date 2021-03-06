class Item

  @@discount = 0.05  

  def self.discount
    if Time.now.month == 10
      return (@@discount + 0.1).round(2)
    else
      return @@discount
    end
  end

  def initialize(options={})
    @real_price = options[:price]
    @name = options[:name]
	@weight = options[:weight]
  end

  attr_reader :real_price, :name, :weight
  attr_writer :price
  
  def info
	yield(price)
	yield(name)
	yield(weight)
  end

  def price
    #(@real_price - @real_price*self.class.discount) + tax if @real_price
    #my version
	unless @real_price.nil?
	  (@real_price - @real_price*self.class.discount) + tax
	else
	  @real_price = 0
	end
  end
  
  def to_s
    "#{self.name}:#{self.price}:#{self.weight}"
  end
  

private

  def tax
    type_tax = if self.class == VirtualItem
      1
    else
      2
    end
    cost_tax = if @real_price > 5
      @real_price*0.2
    else
      @real_price*0.1
    end
    cost_tax + type_tax
  end
  
end
