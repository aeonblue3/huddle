require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  setup do
    @project = Factory.create(:project)
  end
  
  test "should be able to retrieve projects based on day" do
    actual = @project.reports_grouped_by_day
    expected_keys = actual.keys.sort.map{ |d| d.to_s(:db) }
    assert_equal(["2009-01-06", "2009-01-07"], expected_keys)
    assert_equal([status_reports(:one_tue).id, status_reports(:two_tue).id], actual[Date.parse("2009-01-06")].map(&:id))
  end
end