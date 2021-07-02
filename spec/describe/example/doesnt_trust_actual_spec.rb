# frozen_string_literal: false

require_relative File.join("..", "..", "spec_helper")

# rubocop:disable Style/MutableConstant
APP = "💩"
# rubocop:enable Style/MutableConstant

RSpec.describe String do
  subject do
    APP
  end

  before do
    def APP.equal?(*)
      # :nocov:
      true
      # :nocov:
    end
  end

  it { is_expected.not_to be "🌈" }
end

# Success: expected "💩" not to be "🌈".
