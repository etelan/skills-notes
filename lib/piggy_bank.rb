class PiggyBank

  attr_reader :coins

  def initialize
    @coins = 0
  end


  attr_writer :coins

  def deposit(num)
    @coins += num
  end

  def cling
    print (if @coins > 0 then "cling" else "silence" end)
  end

  def break
  end

end
