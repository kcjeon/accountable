class GoalsController < ApplicationController
	def index
		@goal = Goal.order("RANDOM()").first
	end

	def new
		@goal = Goal.new
	end

	def create
		Goal.create(goal_params)
		redirect_to root_path
	end

	private

	def goal_params
		params.require(:goal).permit(:desire, :author)
	end
end
