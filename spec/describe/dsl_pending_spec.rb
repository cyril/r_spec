# frozen_string_literal: true

require_relative File.join("..", "spec_helper")

RSpec.describe RSpec::Dsl do
  describe ".pending" do
    pending "is implemented but waiting" do
      # expect something to be finished
    end

    pending "is not yet implemented and waiting"
  end
end