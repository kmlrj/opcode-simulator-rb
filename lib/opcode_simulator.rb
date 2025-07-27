# frozen_string_literal: true

require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup # ready!

# OpcodeSimulator
module OpcodeSimulator
  def self.execute(instructions)
    OpcodeSimulator::Service.new(instructions).execute
  end
end

loader.eager_load # optionally
