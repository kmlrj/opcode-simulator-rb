module OpcodeSimulator
  module Instructions
    class Factory
      def self.for(register_state, instruction)
        new(register_state).for(instruction)
      end

      def initialize(register_state)
        @register_state = register_state
      end

      def for(instruction)
        command, *args = instruction.split(' ')
        args = parse_arguments(args)

        case command
        when 'SET'
          Set.new(@register_state, args)
        when 'ADR'
          Adr.new(@register_state, args)
        when 'ADD'
          Add.new(@register_state, args)
        when 'MOV'
          Mov.new(@register_state, args)
        when 'INR'
          Inr.new(@register_state, args)
        when 'DCR'
          Dcr.new(@register_state, args)
        when 'RST'
          Rst.new(@register_state)
        else
          raise 'Invalid Instruction'
        end
      end

      private

      def parse_arguments(args)
        args ||= []

        args.map do |arg|
          case arg
          when /[A-Z]/
            @register_state[arg]
          when /[\-0-9]+/
            arg.to_i
          else
            raise 'Invalid Arguments'
          end
        end
      end
    end
  end
end
