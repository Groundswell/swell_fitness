module SwellFitness
	class Workout < ActiveRecord::Base
		self.table_name = 'workouts'

		has_many :workout_segments
	end
end
