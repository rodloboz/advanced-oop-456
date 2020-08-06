
# Castle.new("Windsor", "Alfred")
class Castle < House
  def initialize(name, butler)
    # call the House initialize
    # which only takes the name
    super(name)
    # Create an instance of butler
    @butler = Butler.new(butler)
  end
end
