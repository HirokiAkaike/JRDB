class ScoreDatas < ActiveRecord::Migration[5.1]
  def change
    create_table :score_datas do |t|
      t.sting :race_key_course_code
      t.sting :race_key_year
      t.sting :race_key_times
      t.sting :race_key_day
      t.sting :race_key_number_of_race
      t.sting :horse_numbers
      t.sting :pedigree_registration_number
      t.sting :date
      t.sting :horse_name
      t.sting :distance
      t.sting :turf_dart_fault_code
      t.sting :right_and_left
      t.sting :inside_and_outside
      t.sting :baba_state
      t.sting :kind
      t.sting :conditions
      t.sting :symbol
      t.sting :weight
      t.sting :grade
      t.sting :race_name
      t.sting :head_count
      t.sting :race_name_abbreviation
      t.sting :order_of_finish
      t.sting :the_failure_division
      t.sting :time
      t.sting :basis_weight
      t.sting :jockey_name
      t.sting :trainer_name
      t.float :fixed_win_odds
      t.sting :finalized_win_popularity_rank
      t.integer :idm
      t.integer :raw_score
      t.integer :baba_difference
      t.integer :pace
      t.integer :late
      t.integer :taken_position
      t.integer :unfavorable
      t.integer :disadvantage_before
      t.integer :medium_disadvantage
      t.integer :rear_disadvantage
      t.integer :race
      t.sting :course_up
      t.sting :the_degree_of_increase_code
      t.sting :class_code
      t.sting :horse_body_code
      t.sting :sign_code
      t.sting :race_pace
      t.sting :horse_pace
      t.float :ten_index
      t.float :increase_index
      t.float :pace_index
      t.float :race_p_index
      t.sting :chakubamei_1_2
      t.sting :wearing_time_difference_1_2
      t.sting :before_3f_time
      t.sting :post_3f_time
      t.sting :remarks
      t.sting :reserve_jrdb
      t.float :confirm_multiple_wins_odds_under
      t.float :ten_at_win_odds
      t.float :ten_at_fukusho_odds
      t.sting :corner_rank_1
      t.sting :corner_rank_2
      t.sting :corner_rank_3
      t.sting :corner_rank_4
      t.sting :before_3f_top_difference
      t.sting :rear_3f_top_difference
      t.sting :jockey_code
      t.sting :trainer_code
      t.sting :horse_body_weight
      t.sting :horse_body_weight_increase_or_decrease
      t.sting :weather_code
      t.sting :course
      t.sting :race_leg_quality
      t.integer :win
      t.integer :multiple_wins
      t.integer :this_prize
      t.integer :shutoku_prize
      t.sting :race_pace_flow
      t.sting :horse_pace_flow
      t.sting :four_corners_course_up
      t.sting :reserve
      t.sting :new_line
    end
  end
end