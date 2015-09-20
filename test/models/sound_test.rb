require 'test_helper'

class SoundTest < ActiveSupport::TestCase
	should belong_to(:soundable)
	
	should validate_presence_of(:filename)
	should validate_presence_of(:title)
	should validate_presence_of(:length)
	should validate_presence_of(:soundable)
	should validate_uniqueness_of(:filename)
	should allow_value("filename.mp3").for(:filename)
	should_not allow_value("filename").for(:filename)
	should validate_numericality_of(:length)
	
	context "filename_url" do
		setup do
			@sound = FactoryGirl.create(:sound)
		end
		
		should "return a fully-formed URL" do
			assert_equal "http://metexv2.sblorgh.org/media/audio/#{@sound.filename}", @sound.url
		end
	end
end
