class CreatePastRaceResults < ActiveRecord::Migration[5.1]
  def change
    create_table :past_race_results do |t|
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
      t.integer :race_condition_riding_ground_condition
      t.integer :race_condition_class
      t.string :race_condition_requirement
      t.integer :race_condition_symbol
      t.integer :race_condition_weight
      t.integer :race_condition_grade
      t.string :race_condition_race_name
      t.integer :race_condition_horse_count
      t.string :race_condition_race_name_short
      #馬成績
      t.integer :horse_race_performance_ranking
      t.integer :horse_race_performance_abnormal_classification
      t.integer :horse_race_performance_time
      t.integer :horse_race_performance_basis_weight
      t.string :horse_race_performance_jockey_name
      t.string :horse_race_performance_trainer_name
      t.float :horse_race_performance_confirm_win_odds
      t.integer :horse_race_performance_confirm_win_popular_rank
      #jrdbデータ
      t.integer :jrdb_idm
      t.integer :jrdb_primary_point
      t.integer :jrdb_riding_ground_reference
      t.integer :jrdb_pace
      t.integer :jrdb_lagging
      t.integer :jrdb_position_of_race
      t.integer :jrdb_unfavorable
      t.integer :jrdb_unfavorable_before
      t.integer :jrdb_unfavorable_middle
      t.integer :jrdb_unfavorable_after
      t.integer :jrdb_race
      t.integer :jrdb_course_removal
      t.string :jrdb_rising_code
      t.string :jrdb_class_code
      t.integer :jrdb_horse_body_code
      t.integer :jrdb_sign_code
      t.string :jrdb_race_pace
      t.string :jrdb_horse_pace
      t.float :jrdb_ten_index
      t.float :jrdb_rising_index_code
      t.float :jrdb_pace_index
      t.float :jrdb_race_pace_index
      t.string :jrdb_first_second_horse_name
      t.float :jrdb_first_second_horse_time_reference
      t.float :jrdb_before_3f_time
      t.float :jrdb_after_3f_time
      t.string :jrdb_remarks

      t.timestamps
    end
  end
end
