

class House
  attr_reader :name, :butler

  def initialize(name)
    @name = name
  end

  # Do you have a butler?
  def butler?
    !@butler.nil?
  end
end
