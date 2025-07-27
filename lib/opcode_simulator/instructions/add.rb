module OpcodeSimulator
  module Instructions
    # Eg. ADD A 12 (A = A + 12)
    class Add < Base
      # def set_arguments(arguments)
      #   # arg1: register
      #   @arg1 = @register_state[arguments[0].to_s]
      #   # arg2: integer
      #   @arg2 = arguments[1].to_i
      # end

      def execute
        arguments[0].value = arguments[0].value + arguments[1]
      end
    end
  end
end
