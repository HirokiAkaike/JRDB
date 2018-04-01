class HorseTrainingAnalysisDatas < ActiveRecord::Migration[5.1]
  def change
    create_table :horse_training_analysis_datas do |t|
      t.sting :race_key_course_code
      t.sting :race_key_year
      t.sting :race_key_times
      t.sting :race_key_day
      t.sting :race_key_number_of_race
      t.sting :horse_numbers
      t.sting :torture_type
      t.sting :torture_course_type
      t.sting :hill
      t.sting :wood_course
      t.sting :dart_coase
      t.sting :turf_course
      t.sting :pool_torture
      t.sting :failure_practice
      t.sting :poly_track
      t.sting :torture_distance
      t.sting :torture_emphasis
      t.integer :add_switching_index
      t.integer :finish_index
      t.sting :torture_amount_evaluation
      t.sting :index_change_finish
      t.sting :torture_comments
      t.sting :comments_date
      t.sting :torture_evaluation
      t.sting :reserve
      t.sting :new_line
    end
  end
end
