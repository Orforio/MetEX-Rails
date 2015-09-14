require 'test_helper'
 
class StationsHelperTest < ActionView::TestCase
	include StationsHelper
	
	setup do
		@station1 = stations(:abbesses)
		@station2 = stations(:bercy)
	end
	
	test "should display a terminus" do
		assert_equal "Terminus", link_to_next_station(nil, false)
	end
	
	test "should display an allowed station" do
		assert_equal link_to(@station1.name, line_station_path(@station1.line.slug, @station1.slug)), link_to_next_station(@station1, true)
	end
	
	test "should display a disallowed station" do
		assert_equal link_to(@station2.name, line_station_path(@station2.line.slug, @station2.slug), class: 'bg-danger'), link_to_next_station(@station2, false)
	end
end
