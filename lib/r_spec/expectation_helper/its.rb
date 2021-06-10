# frozen_string_literal: true

require_relative "base"
require_relative File.join("..", "expectation_target", "block")

module RSpec
  module ExpectationHelper
    # `its` expectation helper module.
    module Its
      include Base

      # Wraps the target of an expectation with the actual value.
      #
      # @return [Block] The wrapped target of an expectation.
      #
      # @example
      #   is_expected # => #<RSpec::ExpectationTarget::Block:0x00007fb6b8263df8 @callable=#<Proc:0x00007fb6b8263e20>>
      #
      # @api public
      def is_expected
        ExpectationTarget::Block.new(method(:actual))
      end
    end
  end
end