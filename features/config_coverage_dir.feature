@test_unit @config
Feature:
  
  The output directory for test coverage can be customized
  with the SimpleCov.coverage_dir setting. All coverage reports
  will be put there instead of the default 'coverage' directory
  in your project's root.
  
  Scenario:
    Given I cd to "project"
    Given a file named "test/simplecov_config.rb" with:
      """
      require 'simplecov'
      SimpleCov.start do
        coverage_dir 'test/simplecov'
      end
      """
      
    When I successfully run `bundle exec rake test`
    Then a coverage report should have been generated in "test/simplecov"
    And a directory named "coverage" should not exist