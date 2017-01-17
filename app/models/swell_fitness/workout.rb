module SwellFitness
	class Workout < ActiveRecord::Base
		self.table_name = 'workouts'

		has_many :workout_segments

		

		include SwellMedia::Concerns::URLConcern
		include SwellMedia::Concerns::AvatarAsset
		include SwellMedia::Concerns::TagArrayConcern
		mounted_at '/exercises'

		include FriendlyId
		friendly_id :slugger, use: :slugged

		def slugger
			self.name.present? ? self.name : self.full_name
		end
	end
end
