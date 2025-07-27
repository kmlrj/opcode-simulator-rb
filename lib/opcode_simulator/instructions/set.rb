module OpcodeSimulator
  module Instructions
    # Eg. SET A 10
    class Set < Base
      def execute
        arguments[0].value = arguments[1]
      end
    end
  end
end
