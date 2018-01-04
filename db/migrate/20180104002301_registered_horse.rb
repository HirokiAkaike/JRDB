class RegisteredHorse < ActiveRecord::Migration[5.1]
  def change
    create_table :refund_bet_tickets do |t|
      #レースキー
      t.string :race_key_course_code
      t.string :race_key_year
      t.string :race_key_times
      t.string :race_key_day
      t.string :race_key_number_of_race
      t.string :horse_name_code_position
      t.string :horse_pedigree_registration_code_position
      t.string :horse_name_position
      t.string :horse_gender_code_position
      t.string :horse_symbol_code_position
      t.string :blinker_code_position
      t.string :jockey_name_position
      t.string :burden_weight_position
      t.string :apprentice_class_position
      t.string :trainer_name_position
      t.string :trainer_belong_position
      t.string :idm_position_position
      t.string :rising_degree_position
      t.string :rotation_position
      t.string :leg_quality_position
      t.string :distance_aptitude_position
      t.string :distance_aptitude_second_position
      t.string :turf_aptitude_code_position
      t.string :dart_aptitude_code_position
      t.string :heaviness_aptitude_code_position
      t.string :hoof_code_position
      t.string :class_code_position
      t.string :coat_color_code_position
      t.string :other_data_link_key_prebious_run_1_race_score_key_position
      t.string :other_data_link_key_prebious_run_2_race_score_key_position
      t.string :other_data_link_key_prebious_run_3_race_score_key_position
      t.string :other_data_link_key_prebious_run_4_race_score_key_position
      t.string :other_data_link_key_prebious_run_5_race_score_key_position
      t.string :other_data_link_key_prebious_run_1_race_key_position
      t.string :other_data_link_key_prebious_run_2_race_key_position
      t.string :other_data_link_key_prebious_run_3_race_key_position
      t.string :other_data_link_key_prebious_run_4_race_key_position
      t.string :other_data_link_key_prebious_run_5_race_key_position
      t.string :jockey_code_position
      t.string :trainer_code_position
      t.string :winning_prize_position
      t.string :income_prize_position
      t.string :condition_class_position
      t.string :exercise_position
      t.string :body_type_position
      t.string :body_type_total_1_position
      t.string :body_type_total_2_position
      t.string :body_type_total_3_position
      t.string :horse_special_mention_1_position
      t.string :horse_special_mention_2_position
      t.string :horse_special_mention_3_position
      t.string :expansion_forecast_data_ten_index_position
      t.string :expansion_forecast_data_pace_index_position
      t.string :expansion_forecast_data_ricing_index_position
      t.string :expansion_forecast_data_position_index_position
      t.string :horse_start_index_position
      t.string :horse_lagging_rate_position
      t.string :running_before_reference_position
      t.string :reference_riding_horse_code_position
      t.string :data_partition_position
      t.string :leading_rank_position
      t.string :reserve_position

      t.timestamps
    end
  end
end
