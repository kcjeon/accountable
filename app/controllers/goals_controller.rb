class GoalsController < ApplicationController
	def index
		@goal = Goal.order("RANDOM()").first
	end

	def new
		@goal = Goal.new
	end
end
