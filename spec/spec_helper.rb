# frozen_string_literal: true

require "pry"
require "action_controller"
require "action_controller/test_case"
require "combustion"

require "view_component/test_helpers"
require "capybara/rspec"

require "material_design_lite_components"

class ApplicationController < ActionController::Base
end

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.example_status_persistence_file_path = ".rspec_status"
  config.order = :random

  config.include ViewComponent::TestHelpers, type: :component
  config.include Capybara::RSpecMatchers, type: :component

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
