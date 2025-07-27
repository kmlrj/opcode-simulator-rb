module OpcodeSimulator
  class Service
    attr_accessor :register_state, :instructions

    def initialize(instructions, registers_count = 4)
      init_register_state(registers_count)
      @instructions = instructions
    end

    def execute
      instructions.each do |instruction|
        Instructions::Factory.for(@register_state, instruction).execute
      end

      @register_state
    end

    private

    def init_register_state(registers_count)
      registers = []

      ('A'..'Z').each do |alphabet|
        break if registers_count <= 0

        registers << Register.new(alphabet)
        registers_count -= 1
      end

      @register_state = RegisterState.new(registers)
    end
  end
end
