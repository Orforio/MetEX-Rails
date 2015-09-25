require 'test_helper'

class ImageTest < ActiveSupport::TestCase
	should belong_to(:imageable)
	
	should validate_presence_of(:filename)
	should validate_presence_of(:title)
	should validate_presence_of(:alt)
	should validate_presence_of(:imageable)
	should allow_value("filename.jpg").for(:filename)
	should_not allow_value("filename").for(:filename)
	
	context "image.url" do
		setup do
			@image = FactoryGirl.create(:image)
		end
		
		should "return a fully-formed URL" do
			assert_equal "#{Rails.application.config.asset_server}/#{Rails.application.config.asset_image_path}/stations/#{@image.filename}", @image.url
		end
	end
end
