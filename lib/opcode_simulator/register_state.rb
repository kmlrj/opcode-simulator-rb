module OpcodeSimulator
  class RegisterState
    attr_reader :registers

    # args: `registers` - list of Register objects
    def initialize(registers)
      @registers = registers.to_h { |register| [register.name, register] }
    end

    def [](name)
      raise "Register `#{name}` is not present" unless @registers.key?(name)

      @registers[name]
    end

    def reset
      @registers.each do |k, v|
        v.value = 0
      end
    end
  end
end
