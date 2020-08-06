
# Class names are UpperCamelCase: AdminUser
# Class files are in snake_case: admin_user.rb

class Sailboat < Boat
  class InvalidType < StandardError; end

  # Defines Reader/Getter and Writer/Setter
  attr_accessor :skipper

  # attr_reader :type

  # Class Method
  # self here refers to the Class itself
  # Sailboat.types
  def self.types
    # Array of Strings
    %w[Cutter Dinghy Galleon Sloop]
  end

  # Sailboat.new
  def initialize(name, length, width, depth, type)
    # self refers to the instance
    raise InvalidType, message: "#{type} is not a valid sailboat" unless self.class.types.include?(type)

    # Call the initialize defined in the SuperClass Boat
    super(name, length, width, depth)
    @type = type
  end

  # Instance methods:
  # Reader
  def type
    @type.downcase
  end

  # def skipper=(skipper)
  #   @skipper = skipper
  # end

  # Do you have a skipper?
  def skipper?
    !@skipper.nil?
  end


  private

  def water_displacement
    super + 500
  end
end
