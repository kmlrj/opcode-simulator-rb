module OpcodeSimulator
  module Instructions
    # Eg. DCR A
    class Dcr < Base
      def execute
        arguments[0].value -= 1
      end
    end
  end
end
