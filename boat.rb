# SELF / THIS instance

# Water Displacement
# Lenght, Width, Depth

# Open class statement
class Boat
  SEAWATER_WEIGHT_PER_CUBIC_FOOT = 64.1

  # Reader / Getter
  attr_reader :name

  # def name
  #   @name
  # end

  # Constructor
  # Run on .new instanciation: Canoe.new
  def initialize(name, length, width, depth)
    @name = name
    @length = length
    @width = width
    @depth = depth
  end

  def type
    self.class.to_s.downcase
  end

  # Public interface
  def displacement
    (water_displacement * SEAWATER_WEIGHT_PER_CUBIC_FOOT).round
  end

  def description
    # instance method
    # self is THIS/THE instance
    "The #{name} is a #{type} \n" +
      "It has a water displacement of #{displacement} cubic feet"
  end

  # Inner working of a class
  private

  def water_displacement
    @length * @width * @depth
  end
end
