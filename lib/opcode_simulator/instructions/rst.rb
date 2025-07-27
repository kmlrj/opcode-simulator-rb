module OpcodeSimulator
  module Instructions
    # Eg. RST
    class Rst < Base
      def execute
        @register_state.reset
      end
    end
  end
end
