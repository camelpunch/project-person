class Person
  def initialize(options)
    @full = false
    @stomach = options[:stomach]
  end

  def full?
    @full
  end

  def eat(food)
    @full = true
    @stomach.digest food
  end
end

