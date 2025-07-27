module OpcodeSimulator
  module Instructions
    # Eg. ADR C D (C = C + D)
    class Adr < Base
      def execute
        arguments[0].value = arguments[0].value + arguments[1].value
      end
    end
  end
end
