module SwellFitness
	class WorkoutSegmentExercise < ActiveRecord::Base
		self.table_name = 'workout_segments'

		enum segment_type: { 'AMRAP' => 1, 'FT' => 2, 'RFT' => 3, 'TABATA' => 4 }

		belongs_to 	:workout
		has_many	:workout_segment_exercies
		has_many	:exercises, through: :workout_segment_exercies

	end
end
