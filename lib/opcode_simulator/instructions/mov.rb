module OpcodeSimulator
  module Instructions
    # Eg. MOV A B
    class Mov < Base
      def execute
        arguments[0].value = arguments[1].value
      end
    end
  end
end
