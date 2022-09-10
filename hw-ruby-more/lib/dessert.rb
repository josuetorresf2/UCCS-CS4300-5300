class Dessert
  # getters and setters
  attr_accessor:name,:calories

  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
    @calories < 200 ? true : false
  end
  def delicious?
    # your code here
    return true
  end
end

class JellyBean < Dessert
  attr_accessor:flavor
  def initialize(flavor)
    # your code here
    @flavor = flavor
    @name = @flavor + ' jelly bean'
    @calories = 5
  end
  # your code here
  def delicious?
    @flavor == 'licorice' ? false : true
  end
end