class PiggyBank

  attr_reader :coins

  def initialize
    @coins = 0
  end


  attr_writer :coins
  
  def deposit(num)
    @coins += num
  end

end
