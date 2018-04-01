class ResultRaceDatas < ActiveRecord::Migration[5.1]
  def change
    create_table :result_race_datas do |t|
      t.sting :race_key_course_code
      t.sting :race_key_year
      t.sting :race_key_times
      t.sting :race_key_day
      t.sting :race_key_number_of_race
      t.sting :halong_time_1
      t.sting :halong_time_2
      t.sting :halong_time_3
      t.sting :halong_time_4
      t.sting :halong_time_5
      t.sting :halong_time_6
      t.sting :halong_time_7
      t.sting :halong_time_8
      t.sting :halong_time_9
      t.sting :halong_time_10
      t.sting :halong_time_11
      t.sting :halong_time_12
      t.sting :halong_time_13
      t.sting :halong_time_14
      t.sting :halong_time_15
      t.sting :halong_time_16
      t.sting :halong_time_17
      t.sting :halong_time_18
      t.sting :corner_1
      t.sting :corner_2
      t.sting :corner_3
      t.sting :corner_4
      t.sting :pace_up_position
      t.sting :one_corner
      t.sting :corners_2
      t.sting :mukaitadashi
      t.sting :triangular
      t.sting :four_corners
      t.sting :straight_line
      t.sting :race_comments
      t.sting :reserve
      t.sting :new_line
    end
  end
end
