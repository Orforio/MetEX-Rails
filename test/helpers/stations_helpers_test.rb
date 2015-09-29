require 'test_helper'
 
class StationsHelperTest < ActionView::TestCase
	include StationsHelper
	
	setup do
		@station = FactoryGirl.create(:station)
	end
	
	test "should display a terminus" do
		assert_equal "Terminus", link_to_next_station(nil, false)
	end
	
	test "should display an allowed station" do
		assert_equal link_to(@station.name, station_path(@station.line.slug, @station.slug)), link_to_next_station(@station, true)
	end
	
	test "should display a disallowed station" do
		assert_equal link_to(@station.name, station_path(@station.line.slug, @station.slug), class: 'bg-danger'), link_to_next_station(@station, false)
	end
end
