require 'simplecov'
require 'simplecov-console'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,

])
SimpleCov.start

ENV['RACK_ENV'] = 'test'

Capybara.app = BookmarkManager


RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end


  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  #
  # config.example_status_persistence_file_path = "spec/examples.txt"
  #
  # config.warnings = true
  #
  # if config.files_to_run.one?
  #
  #   config.default_formatter = "doc"
  # end
  #
  #
  # config.profile_examples = 10
  #
  # config.order = :random
  #
  # Kernel.srand config.seed
end
