class SwellFitnessMigration < ActiveRecord::Migration
	# V4.0

	def change

		create_table :exercises do |t|
			t.string	:name
			t.integer	:status
			t.string	:description
			t.text		:content
			t.text		:instruction
			t.string 	:muscles, array: true, default: '{}'
			t.string 	:tags, array: true, default: '{}'

			t.timestamps
		end
		add_index :exercises, [:name, :id]
		add_index :exercises, :tags, using: 'gin'
		add_index :exercises, :muscles, using: 'gin'


		create_table :workout_segments do |t|
			t.integer 	:workout_id
			t.string	:name, default: nil
			t.integer	:segment_type
			t.integer	:position, default: 1
			t.integer	:rounds, default: nil
			t.timestamps
		end
		add_index :workout_segments, [:name, :id]
		add_index :workout_segments, [:workout_id, :position]


		create_table :workout_segment_exercies do |t|
			t.integer 	:workout_segment_id
			t.integer 	:exercise_id
			t.integer	:position, 	default: 1
			t.integer	:quantity, 	default: 1
			t.integer	:unit, 		default: 1
			t.timestamps
		end
		add_index :workout_segment_exercies, [:workout_segment_id, :position], name: 'index_workout_segment_exercies_on_segment_and_position'
		add_index :workout_segment_exercies, [:exercise_id, :position], name: 'index_workout_segment_exercies_on_exercise_and_position'


		create_table :workouts do |t|
			t.string	:name
			t.string	:description
			t.text		:content
			t.text		:instruction
			t.string 	:tags, array: true, default: '{}'

			t.timestamps
		end
		add_index :workouts, [:name, :id]
		add_index :workouts, :tags, using: 'gin'



	end
end
