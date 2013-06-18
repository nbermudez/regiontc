class StoriesController < ApplicationController
	def index
		@current_page = "HISTORIAS"
		@stories = Story.order("year ASC")
		@stakes = Rails.configuration.stakes
		@years = []
		@stories.each do |t|
			@years.push(t.year) unless @years.include? t.year
		end
	end
end
