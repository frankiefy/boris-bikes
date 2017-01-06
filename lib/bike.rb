class Bike
  attr_reader :works
  def initialize(works = true)
    @works = works
  end
  def working?
    works
  end
end
