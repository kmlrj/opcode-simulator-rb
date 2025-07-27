# frozen_string_literal: true

require_relative '../lib/opcode_simulator'
require 'faker'
require 'debug'

class OpcodeSimulatorTest
  def initialize
    @failures = []
  end

  def run_tests
    public_methods.select { |testcase| testcase =~ /\Atest_/ }.sort.each do |testcase|
      print "#{testcase}: "
      public_send testcase
      print "\n"
    end

    puts "\n\n"
    puts @failures
  end

  # def test_hello_world
  #   assert(1, 1)
  # end

  def test_multiple_instructions
    instructions = []
    instructions << "RST"
    instructions << "SET A 10"
    instructions << "SET B 14"
    instructions << "ADD B 12"
    instructions << "INR A"
    instructions << "DCR B"

    state = OpcodeSimulator.execute(instructions)
    assert(11, state['A'].value)
    assert(25, state['B'].value)
  end

  def assert(lhs, rhs)
    if lhs == rhs
      print "\e[0;32m.\e[0m"
    else
      print "\e[0;31mF\e[0m"
      @failures << "#{lhs} != #{rhs}"
    end
  end
end

# MainTest.new.run_tests
