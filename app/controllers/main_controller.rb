class MainController < ApplicationController

	def index
		@stories = Story.all
		@patterns = Pattern.all
		@tasks = Task.all
		@applications = Application.all
		@storylinks = Storylink.all
		@patternlinks = Patternlink.all
		@tasklinks = Tasklink.all

		respond_to do |format|
			format.html
			format.xml { render :layout => false }
		end


	end
end
