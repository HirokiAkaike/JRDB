class CreateHoldingRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :holding_races do |t|

      t.string :holding_race_key
      t.string :race_key_course_code
      t.string :race_key_year
      t.string :race_key_times
      t.string :race_key_day
      t.date :date_ymd
      t.string :holding_class
      t.string :day_of_week
      t.string :course_name
      t.string :weather_code
      t.string :turf_course_state_code
      t.string :turf_course_Inside_state
      t.string :turf_course_middle_state
      t.string :turf_course_outside_state
      t.string :turf_course_difference
      t.string :linear_course_difference_must_inside
      t.string :linear_course_difference_inside
      t.string :linear_course_difference_middle
      t.string :linear_course_difference_outside
      t.string :linear_course_difference_must_outside
      t.string :dirt_course_state_code
      t.string :dirt_course_Inside_state
      t.string :dirt_course_middle_state
      t.string :dirt_course_outside_state
      t.string :dirt_course_difference
      t.string :data_class

      t.timestamps
    end
  end
end
