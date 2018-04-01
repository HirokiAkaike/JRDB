class CreateBeforeRacingExtensions < ActiveRecord::Migration[5.1]
  def change
    create_table :before_racing_extensions do |t|

      t.string :race_key_course_code
      t.string :race_key_year
      t.string :race_key_times
      t.string :race_key_day
      t.string :race_key_number_of_race
      t.string :race_key_horse_number
      t.string :race_performance_pedigree_register_code
      t.date :race_performance_date_ymd
      t.string :special_mention1
      t.string :special_mention2
      t.string :special_mention3
      t.string :special_mention4
      t.string :special_mention5
      t.string :special_mention6
      t.string :harness_code1
      t.string :harness_code2
      t.string :harness_code3
      t.string :harness_code4
      t.string :harness_code5
      t.string :harness_code6
      t.string :harness_code7
      t.string :harness_code8
      t.string :Leg_code_general_1
      t.string :Leg_code_general_2
      t.string :Leg_code_general_3
      t.string :Leg_code_left_front_1
      t.string :Leg_code_left_front_2
      t.string :Leg_code_left_front_3
      t.string :Leg_code_right_front_1
      t.string :Leg_code_right_front_2
      t.string :Leg_code_right_front_3
      t.string :Leg_code_left_back_1
      t.string :Leg_code_left_back_2
      t.string :Leg_code_left_back_3
      t.string :Leg_code_right_back_1
      t.string :Leg_code_right_back_2
      t.string :Leg_code_right_back_3
      t.string :paddock_comment
      t.string :Leg_comment
      t.string :harness_other_comment
      t.string :race_comment
      t.string :data_analysis_hami
      t.string :data_analysis_bandage
      t.string :data_analysis_horseshoe
      t.string :data_analysis_hoof_state
      t.string :data_analysis_soe
      t.string :data_analysis_osselet

      t.timestamps
    end
  end
end
