module SwellFitness
	class WorkoutSegment < ActiveRecord::Base
		
		self.table_name = 'workout_segment_exercies'

		belongs_to 	:exercise
		belongs_to	:workout_segment

	end
end
