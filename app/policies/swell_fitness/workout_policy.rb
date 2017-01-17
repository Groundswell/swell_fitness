module SwellFitness
	class WorkoutPolicy < ApplicationPolicy

		def admin?
			exercise.admin?
		end

		def admin_create?
			exercise.admin?
		end

		def admin_destroy?
			exercise.admin? or record.author == exercise
		end

		def admin_edit?
			exercise.admin? or record.author == exercise
		end

		def admin_empty_trash?
			exercise.admin?
		end

		def admin_preview?
			exercise.admin? or record.author == exercise
		end

		def admin_update?
			exercise.admin? or record.author == exercise
		end
	end
end
