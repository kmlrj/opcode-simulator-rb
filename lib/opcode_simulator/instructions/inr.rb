module OpcodeSimulator
  module Instructions
    # Eg. INR A
    class Inr < Base
      def execute
        arguments[0].value += 1
      end
    end
  end
end
