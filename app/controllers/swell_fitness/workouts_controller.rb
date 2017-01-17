module SwellFitness
	class WorkoutsController < ApplicationController

		def index
			@workouts = Workout.all
			@workouts = @workouts.page( params[:page] ).per(10)
		end

		def show
			@workouts = Workout.friendly.find( params[:id] )
		end

	end
end
