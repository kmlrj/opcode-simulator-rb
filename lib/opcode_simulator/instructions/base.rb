module OpcodeSimulator
  module Instructions
    class Base
      attr_reader :register_state, :arguments

      def initialize(register_state, arguments = [])
        @register_state = register_state
        @arguments = arguments
      end

      def validate!(arguments)
        raise NotImplementedError
      end

      def execute
        raise NotImplementedError
      end
    end
  end
end
