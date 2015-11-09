class VirtualItem < Item

  attr_reader :weight
  
  def initialize(options={})
    options[:weight] = 0
	super
  end
  
end