module SwellFitness
	class ExercisesController < ApplicationController

		def index
			@exercises = Exercise.all.order( name: :asc )
			@exercises = @exercises.page( params[:page] ).per(10)
		end

		def show
			@exercise = Exercise.friendly.find( params[:id] )
		end

	end
end
