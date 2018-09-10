class Dessert
  attr_accessor :name
  attr_accessor :calories
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
    @calories < 200
  end
  def delicious?
    # your code here
    # clearly, you've never had candy corn
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    # your code here
    @name = "#{flavor} jelly bean"
    @calories = 5
    @flavor = flavor
  end
  # your code here
  def delicious?
    @flavor != 'licorice'
  end
  
end
