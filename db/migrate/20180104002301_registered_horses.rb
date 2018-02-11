class RegisteredHorses < ActiveRecord::Migration[5.1]
  def change
    create_table :registered_horses do |t|
      #レースキー
      t.string :race_key_course_code
      t.string :race_key_year
      t.string :race_key_times
      t.string :race_key_day
      t.string :race_key_number_of_race
      t.string :horse_name_code
      t.string :horse_pedigree_registration_code
      t.string :horse_name
      t.string :horse_gender_code
      t.string :horse_symbol_code
      t.string :blinker_code
      t.string :jockey_name
      t.integer :burden_weight
      t.string :apprentice_class
      t.string :trainer_name
      t.string :trainer_belong
      t.float :idm
      t.string :rising_degree
      t.string :rotation
      t.string :leg_quality
      t.string :distance_aptitude
      t.string :distance_aptitude_second
      t.string :turf_aptitude_code
      t.string :dart_aptitude_code
      t.string :heaviness_aptitude_code
      t.string :hoof_code
      t.string :class_code
      t.string :coat_color_code
      t.string :other_data_link_key_prebious_run_1_race_score_key
      t.string :other_data_link_key_prebious_run_2_race_score_key
      t.string :other_data_link_key_prebious_run_3_race_score_key
      t.string :other_data_link_key_prebious_run_4_race_score_key
      t.string :other_data_link_key_prebious_run_5_race_score_key
      t.string :other_data_link_key_prebious_run_1_race_key
      t.string :other_data_link_key_prebious_run_2_race_key
      t.string :other_data_link_key_prebious_run_3_race_key
      t.string :other_data_link_key_prebious_run_4_race_key
      t.string :other_data_link_key_prebious_run_5_race_key
      t.string :jockey_code
      t.string :trainer_code
      t.integer :winning_prize
      t.integer :income_prize
      t.string :condition_class
      t.string :exercise
      t.string :body_type
      t.string :body_type_total_1
      t.string :body_type_total_2
      t.string :body_type_total_3
      t.string :horse_special_mention_1
      t.string :horse_special_mention_2
      t.string :horse_special_mention_3
      t.float :expansion_forecast_data_ten_index
      t.float :expansion_forecast_data_pace_index
      t.float :expansion_forecast_data_ricing_index
      t.float :expansion_forecast_data_position_index
      t.float :horse_start_index
      t.float :horse_lagging_rate
      t.string :running_before_reference
      t.string :reference_riding_horse_code
      t.string :data_partition
      t.string :leading_rank
      t.string :reserve

      t.timestamp :deleted_at
      t.timestamps
    end
  end
end
