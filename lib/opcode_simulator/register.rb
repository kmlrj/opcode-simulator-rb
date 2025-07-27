module OpcodeSimulator
  class Register
    attr_reader :name
    attr_accessor :value

    def initialize(name, value = nil)
      @name = name
      @value = value
    end
  end
end
