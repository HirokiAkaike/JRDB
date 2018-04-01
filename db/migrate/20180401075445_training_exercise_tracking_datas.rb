class TrainingExerciseTrackingDatas < ActiveRecord::Migration[5.1]
  def change
    create_table :training_exercise_tracking_datas do |t|
      t.sting :race_key_course_code
      t.sting :race_key_year
      t.sting :race_key_times
      t.sting :race_key_day
      t.sting :race_key_number_of_race
      t.sting :horse_numbers
      t.sting :day_of_the_week
      t.sting :torture_date
      t.sting :number_of_times
      t.sting :torture_course_code
      t.sting :add_switching_type
      t.sting :state_chase
      t.sting :take_the_role
      t.sting :torture_f
      t.integer :ten_f
      t.integer :intermediate_f
      t.integer :put_away_f
      t.integer :ten_f_index
      t.integer :intermediate_f_index
      t.integer :put_away_f_index
      t.integer :add_switching_index
      t.sting :together_with_the_results
      t.sting :add_switching_type
      t.integer :age
      t.sting :class
      t.sting :reserve
      t.sting :new_line
    end
  end
end
