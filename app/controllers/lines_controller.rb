class LinesController < ApplicationController
	# GET /lines
	# GET /lines.json
	def index
		@lines = Line.all
	end
end
