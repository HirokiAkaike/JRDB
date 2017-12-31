class CreateDisassemblePastRaceResults < ActiveRecord::Migration[5.1]
  def change
    create_table :disassemble_past_race_results do |t|
      #レースキー
      t.string :race_key_course_code
      t.string :race_key_year
      t.string :race_key_times
      t.date :race_key_day
      t.string :race_key_number_of_race
      t.string :race_key_horse_number
      #競争成績キー
      t.string :race_performance_pedigree_register_code
      t.date :race_performance_date_ymd
      t.string :race_performance_horse_name
      #レース条件
      t.integer :race_condition_distance
      #レース条件＿トラック情報
      t.string :truck_turf_dirt_fault_code
      t.string :truck_right_or_left
      t.string :truck_inside_or_outside
      #レース条件
      t.string :race_condition_riding_ground_condition
      t.string :race_condition_class
      t.string :race_condition_requirement
      t.string :race_condition_symbol
      t.string :race_condition_weight
      t.string :race_condition_grade
      t.string :race_condition_race_name
      t.string :race_condition_horse_count
      t.string :race_condition_race_name_short
      #馬成績
      t.string :horse_race_performance_ranking
      t.string :horse_race_performance_abnormal_classification
      t.string :horse_race_performance_time
      t.string :horse_race_performance_basis_weight
      t.string :horse_race_performance_jockey_name
      t.string :horse_race_performance_trainer_name
      t.float :horse_race_performance_confirm_win_odds
      t.string :horse_race_performance_confirm_win_popular_rank
      #jrdbデータ
      t.string :jrdb_idm
      t.string :jrdb_primary_point
      t.string :jrdb_riding_ground_reference
      t.string :jrdb_pace
      t.string :jrdb_lagging
      t.string :jrdb_position_of_race
      t.string :jrdb_unfavorable
      t.string :jrdb_unfavorable_before
      t.string :jrdb_unfavorable_middle
      t.string :jrdb_unfavorable_after
      t.string :jrdb_race
      t.string :jrdb_course_removal
      t.string :jrdb_rising_code
      t.string :jrdb_class_code
      t.string :jrdb_horse_body_code
      t.string :jrdb_sign_code
      t.string :jrdb_race_pace
      t.string :jrdb_horse_pace
      t.string :jrdb_ten_index
      t.string :jrdb_rising_index_code
      t.string :jrdb_pace_index
      t.string :jrdb_race_pace_index
      t.string :jrdb_first_second_horse_name
      t.string :jrdb_first_second_horse_time_reference
      t.string :jrdb_before_3f_time
      t.string :jrdb_after_3f_time
      t.string :jrdb_remarks

      t.timestamps
    end
  end
end
