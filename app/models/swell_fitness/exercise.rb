module SwellFitness
	class Exercise < ActiveRecord::Base
		self.table_name = 'exercises'



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
