ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActionController::TestCase
  include Devise::TestHelpers
end

class ActiveSupport::TestCase

  include ActionController::RecordIdentifier

  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def login_as_one
    sign_in(users(:one))
  end

  def set_current_project symbol
    @request.session[:project_id] = projects(symbol).id
  end

  def self.should_match_find_method(named_scope, *args, &block)
    should "match a find method #{named_scope}" do
      ar_class = self.class.model_class
      found_objects = ar_class.send(named_scope, *args)
      assert !found_objects.blank?
      found_objects.each do |obj|
        assert block.call(obj)
      end
      
      unfound_objects = ar_class.all - found_objects
      assert unfound_objects.blank?
      unfound_objects.each do |obj|
        assert !block.call(obj)
      end
    end
  end
end