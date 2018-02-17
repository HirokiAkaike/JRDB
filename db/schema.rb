# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180217115344) do

  create_table "basic_horses", force: :cascade do |t|
    t.string "pedigree_register_code"
    t.string "horse_name"
    t.string "gender_code"
    t.string "coat_color_code"
    t.string "horse_symbol_code"
    t.string "pedigree_info_father_name"
    t.string "pedigree_info_mother_name"
    t.string "pedigree_info_maternal_father_name"
    t.date "pedigree_info_barth_on"
    t.date "pedigree_info_father_barth_on"
    t.date "pedigree_info_mother_barth_on"
    t.date "pedigree_info_maternal_father_barth_on"
    t.string "pedigree_info_owner_name"
    t.string "pedigree_info_owner_belong_code"
    t.string "pedigree_info_producer_name"
    t.string "pedigree_info_production_place_name"
    t.string "pedigree_info_register_del_flg"
    t.date "pedigree_info_data_ymd"
    t.string "pedigree_info_father_lineage_code"
    t.string "pedigree_info_maternal_father_lineage_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "holding_races", force: :cascade do |t|
    t.string "holding_race_key"
    t.string "race_key_course_code"
    t.string "race_key_year"
    t.string "race_key_times"
    t.string "race_key_day"
    t.date "date_ymd"
    t.string "holding_class"
    t.string "day_of_week"
    t.string "course_name"
    t.string "weather_code"
    t.string "turf_course_state_code"
    t.string "turf_course_Inside_state"
    t.string "turf_course_middle_state"
    t.string "turf_course_outside_state"
    t.string "turf_course_difference"
    t.string "linear_course_difference_must_inside"
    t.string "linear_course_difference_inside"
    t.string "linear_course_difference_middle"
    t.string "linear_course_difference_outside"
    t.string "linear_course_difference_must_outside"
    t.string "dirt_course_state_code"
    t.string "dirt_course_Inside_state"
    t.string "dirt_course_middle_state"
    t.string "dirt_course_outside_state"
    t.string "dirt_course_difference"
    t.string "data_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jrdb_informations", force: :cascade do |t|
    t.string "race_key_course_code"
    t.string "race_key_year"
    t.string "race_key_times"
    t.string "race_key_day"
    t.string "race_key_number_of_race"
    t.string "race_horse_number"
    t.string "pedigree_register_code"
    t.string "horse_name"
    t.float "standard_odds"
    t.float "standard_show_odds"
    t.float "cid_training_point"
    t.float "cid_racing_stable_point"
    t.float "cid_point"
    t.integer "cid"
    t.float "ls_index"
    t.string "ls_evaluation"
    t.string "em"
    t.string "racing_stable_bb_mark"
    t.integer "racing_stable_bb_win_recovery_rate"
    t.integer "racing_stable_bb_quinella_rate"
    t.string "jockey_bb_mark"
    t.integer "jockey_bb_win_recovery_rate"
    t.integer "jockey_bb_quinella_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "past_race_results", force: :cascade do |t|
    t.string "race_key_course_code"
    t.string "race_key_year"
    t.string "race_key_times"
    t.string "race_key_day"
    t.string "race_key_number_of_race"
    t.string "race_key_horse_number"
    t.string "race_performance_pedigree_register_code"
    t.date "race_performance_date_ymd"
    t.string "race_performance_horse_name"
    t.integer "race_condition_distance"
    t.string "truck_turf_dirt_fault_code"
    t.string "truck_right_or_left"
    t.string "truck_inside_or_outside"
    t.integer "race_condition_riding_ground_condition"
    t.integer "race_condition_class"
    t.string "race_condition_requirement"
    t.integer "race_condition_symbol"
    t.integer "race_condition_weight"
    t.integer "race_condition_grade"
    t.string "race_condition_race_name"
    t.integer "race_condition_horse_count"
    t.string "race_condition_race_name_short"
    t.integer "horse_race_performance_ranking"
    t.integer "horse_race_performance_abnormal_classification"
    t.integer "horse_race_performance_time"
    t.integer "horse_race_performance_basis_weight"
    t.string "horse_race_performance_jockey_name"
    t.string "horse_race_performance_trainer_name"
    t.float "horse_race_performance_confirm_win_odds"
    t.integer "horse_race_performance_confirm_win_popular_rank"
    t.integer "jrdb_idm"
    t.integer "jrdb_primary_point"
    t.integer "jrdb_riding_ground_reference"
    t.integer "jrdb_pace"
    t.integer "jrdb_lagging"
    t.integer "jrdb_position_of_race"
    t.integer "jrdb_unfavorable"
    t.integer "jrdb_unfavorable_before"
    t.integer "jrdb_unfavorable_middle"
    t.integer "jrdb_unfavorable_after"
    t.integer "jrdb_race"
    t.integer "jrdb_course_removal"
    t.string "jrdb_rising_code"
    t.string "jrdb_class_code"
    t.integer "jrdb_horse_body_code"
    t.integer "jrdb_sign_code"
    t.string "jrdb_race_pace"
    t.string "jrdb_horse_pace"
    t.float "jrdb_ten_index"
    t.float "jrdb_rising_index_code"
    t.float "jrdb_pace_index"
    t.float "jrdb_race_pace_index"
    t.string "jrdb_first_second_horse_name"
    t.float "jrdb_first_second_horse_time_reference"
    t.float "jrdb_before_3f_time"
    t.float "jrdb_after_3f_time"
    t.string "jrdb_remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "race_horse_extentions", force: :cascade do |t|
    t.string "race_key_course_code"
    t.string "race_key_year"
    t.string "race_key_times"
    t.string "race_key_day"
    t.string "race_key_number_of_race"
    t.string "race_horse_number"
    t.integer "jra_achievement_1"
    t.integer "jra_achievement_2"
    t.integer "jra_achievement_3"
    t.integer "jra_achievement_4"
    t.integer "interaction_achievement_1"
    t.integer "interaction_achievement_2"
    t.integer "interaction_achievement_3"
    t.integer "interaction_achievement_4"
    t.integer "other_achievement_1"
    t.integer "other_achievement_2"
    t.integer "other_achievement_3"
    t.integer "other_achievement_4"
    t.integer "turf_dirt_fault_achievement_1"
    t.integer "turf_dirt_fault_achievement_2"
    t.integer "turf_dirt_fault_achievement_3"
    t.integer "turf_dirt_fault_achievement_4"
    t.integer "turf_dirt_fault_distance_achievement_1"
    t.integer "turf_dirt_fault_distance_achievement_2"
    t.integer "turf_dirt_fault_distance_achievement_3"
    t.integer "turf_dirt_fault_distance_achievement_4"
    t.integer "truck_distance_achievement_1"
    t.integer "truck_distance_achievement_2"
    t.integer "truck_distance_achievement_3"
    t.integer "truck_distance_achievement_4"
    t.integer "rotation_achievement_1"
    t.integer "rotation_achievement_2"
    t.integer "rotation_achievement_3"
    t.integer "rotation_achievement_4"
    t.integer "circle_achievement_1"
    t.integer "circle_achievement_2"
    t.integer "circle_achievement_3"
    t.integer "circle_achievement_4"
    t.integer "jockey_achievement_1"
    t.integer "jockey_achievement_2"
    t.integer "jockey_achievement_3"
    t.integer "jockey_achievement_4"
    t.integer "good_field_achievement_1"
    t.integer "good_field_achievement_2"
    t.integer "good_field_achievement_3"
    t.integer "good_field_achievement_4"
    t.integer "bad_field_achievement_1"
    t.integer "bad_field_achievement_2"
    t.integer "bad_field_achievement_3"
    t.integer "bad_field_achievement_4"
    t.integer "fail_field_achievement_1"
    t.integer "fail_field_achievement_2"
    t.integer "fail_field_achievement_3"
    t.integer "fail_field_achievement_4"
    t.integer "s_pace_achievement_1"
    t.integer "s_pace_achievement_2"
    t.integer "s_pace_achievement_3"
    t.integer "s_pace_achievement_4"
    t.integer "m_pace_achievement_1"
    t.integer "m_pace_achievement_2"
    t.integer "m_pace_achievement_3"
    t.integer "m_pace_achievement_4"
    t.integer "h_pace_achievement_1"
    t.integer "h_pace_achievement_2"
    t.integer "h_pace_achievement_3"
    t.integer "h_pace_achievement_4"
    t.integer "season_achievement_1"
    t.integer "season_achievement_2"
    t.integer "season_achievement_3"
    t.integer "season_achievement_4"
    t.integer "bracket_achievement_1"
    t.integer "bracket_achievement_2"
    t.integer "bracket_achievement_3"
    t.integer "bracket_achievement_4"
    t.integer "jockey_distance_achievement_1"
    t.integer "jockey_distance_achievement_2"
    t.integer "jockey_distance_achievement_3"
    t.integer "jockey_distance_achievement_4"
    t.integer "jockey_distance_truck_achievement_one_1"
    t.integer "jockey_distance_truck_achievement_one_2"
    t.integer "jockey_distance_truck_achievement_one_3"
    t.integer "jockey_distance_truck_achievement_one_4"
    t.integer "jockey_trainer_achievement_1"
    t.integer "jockey_trainer_achievement_2"
    t.integer "jockey_trainer_achievement_3"
    t.integer "jockey_trainer_achievement_4"
    t.integer "jockey_owner_achievement_1"
    t.integer "jockey_owner_achievement_2"
    t.integer "jockey_owner_achievement_3"
    t.integer "jockey_owner_achievement_4"
    t.integer "jockey_blinker_achievement_1"
    t.integer "jockey_blinker_achievement_2"
    t.integer "jockey_blinker_achievement_3"
    t.integer "jockey_blinker_achievement_4"
    t.integer "trainer_owner_achievement_1"
    t.integer "trainer_owner_achievement_2"
    t.integer "trainer_owner_achievement_3"
    t.integer "trainer_owner_achievement_4"
    t.integer "turf_father_lineage_quinella_rate"
    t.integer "dirt_father_lineage_quinella_rate"
    t.string "father_lineage_quinella_rate_distance_avg"
    t.integer "turf_maternal_father_lineage_quinella_rate"
    t.integer "dirt_maternal_father_lineage_quinella_rate"
    t.string "maternal_father_lineage_quinella_rate_distance_avg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "race_horses", force: :cascade do |t|
    t.string "race_key_course_code"
    t.string "race_key_year"
    t.string "race_key_times"
    t.string "race_key_day"
    t.string "race_key_number_of_race"
    t.string "race_horse_number"
    t.string "horse_pedigree_registration_code"
    t.string "horse_name"
    t.float "idm"
    t.float "jockey_index"
    t.float "infomation_index"
    t.float "reserve_one"
    t.float "reserve_two"
    t.float "reseve_three"
    t.float "composite_index"
    t.string "leg_quality"
    t.string "distance_aptitude"
    t.string "rising_degree"
    t.string "rotation"
    t.float "standard_odds"
    t.integer "standard_popularity_rank"
    t.float "standard_show_odds"
    t.integer "standard_show_popularity_rank"
    t.integer "specific_info_excellent"
    t.integer "specific_info_good"
    t.integer "specific_info_fair"
    t.integer "specific_info_bad"
    t.integer "specific_info_failure"
    t.integer "composite_info_excellent"
    t.integer "composite_info_good"
    t.integer "composite_info_fair"
    t.integer "composite_info_bad"
    t.integer "composite_info_failure"
    t.integer "popularity_index"
    t.float "training_index"
    t.float "racing_stable_index"
    t.string "training_arrow_code"
    t.string "racing_stable_evaluation_code"
    t.float "jockey_expected_confidence_rate"
    t.float "rushing_index"
    t.string "hoof_code"
    t.string "heaviness_aptitude_code"
    t.string "class_code"
    t.string "reserve_four"
    t.string "blinker_code"
    t.string "jockey_name"
    t.string "burden_weight"
    t.string "apprentice_class"
    t.string "trainer_name"
    t.string "trainer_belong"
    t.string "other_data_link_key_prebious_run_1_race_score_key"
    t.string "other_data_link_key_prebious_run_2_race_score_key"
    t.string "other_data_link_key_prebious_run_3_race_score_key"
    t.string "other_data_link_key_prebious_run_4_race_score_key"
    t.string "other_data_link_key_prebious_run_5_race_score_key"
    t.string "other_data_link_key_prebious_run_1_race_key"
    t.string "other_data_link_key_prebious_run_2_race_key"
    t.string "other_data_link_key_prebious_run_3_race_key"
    t.string "other_data_link_key_prebious_run_4_race_key"
    t.string "other_data_link_key_prebious_run_5_race_key"
    t.integer "bracket_number"
    t.string "reserve_five"
    t.string "mark_code_composite"
    t.string "mark_code_idm"
    t.string "mark_code_infomation"
    t.string "mark_code_jockey"
    t.string "mark_code_racing_stable"
    t.string "mark_code_trainer"
    t.string "mark_code_rushing"
    t.string "turf_aptitude_code"
    t.string "dirt_aptitude_code"
    t.string "jockey_code"
    t.string "trainer_code"
    t.string "reserve_six"
    t.integer "winning_prize"
    t.integer "income_prize"
    t.string "condition_class"
    t.float "expansion_forecast_data_ten_index"
    t.float "expansion_forecast_data_pace_index"
    t.float "expansion_forecast_data_ricing_index"
    t.float "expansion_forecast_data_position_index"
    t.string "expansion_forecast_data_pace"
    t.integer "expansion_forecast_data_halfway_ranking"
    t.integer "expansion_forecast_data_halfway_difference"
    t.string "expansion_forecast_data_halfway_Inside_outside"
    t.integer "expansion_forecast_data_after_3f_time"
    t.integer "expansion_forecast_data_after_3f_difference"
    t.string "expansion_forecast_data_after_3f_Inside_outside"
    t.integer "expansion_forecast_data_goal_ranking"
    t.integer "expansion_forecast_data_goal_difference"
    t.string "expansion_forecast_data_goal_Inside_outside"
    t.string "expansion_forecast_data_expansion_symbol"
    t.string "distance_aptitude_two"
    t.string "horse_weight_fixed"
    t.string "horse_weight_gain_fixed"
    t.string "cancel_flg"
    t.string "gender_code"
    t.string "owner_name"
    t.string "owner_belong_code"
    t.string "horse_symbol_code"
    t.integer "rushing_runking"
    t.integer "ls_index_runking"
    t.integer "ten_index_runking"
    t.integer "pace_index_runking"
    t.integer "rising_index_runking"
    t.integer "position_index_runking"
    t.float "jockey_expectation_victory_rate"
    t.float "jockey_expectation_3_inside_rate"
    t.string "transportation_class"
    t.string "exercise"
    t.string "body_type"
    t.string "total_body_type_one"
    t.string "total_body_type_two"
    t.string "total_body_type_three"
    t.string "horse_special_mention_one"
    t.string "horse_special_mention_two"
    t.string "horse_special_mention_three"
    t.float "horse_start_index"
    t.float "horse_departure_rate"
    t.string "running_before_reference"
    t.string "reference_riding_jockey_code"
    t.integer "ten_thousand_ticket_index"
    t.integer "ten_thousand_ticket_mark"
    t.string "down_class_flg"
    t.string "rushing_type"
    t.string "recreation_reason_code"
    t.string "flg"
    t.string "racing_stable_running_times"
    t.string "racing_stable_ymd"
    t.string "racing_stable_days"
    t.string "grazing_destination"
    t.string "grazing_destination_rank"
    t.string "racing_stable_rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "refund_bet_tickets", force: :cascade do |t|
    t.string "race_key_course_code"
    t.string "race_key_year"
    t.string "race_key_times"
    t.string "race_key_day"
    t.string "race_key_number_of_race"
    t.string "win_horse_number_1"
    t.integer "win_odds_1"
    t.string "win_horse_number_2"
    t.integer "win_odds_2"
    t.string "win_horse_number_3"
    t.integer "win_odds_3"
    t.string "show_horse_number_1"
    t.integer "show_odds_1"
    t.string "show_horse_number_2"
    t.integer "show_odds_2"
    t.string "show_horse_number_3"
    t.integer "show_odds_3"
    t.string "show_horse_number_4"
    t.integer "show_odds_4"
    t.string "show_horse_number_5"
    t.integer "show_odds_5"
    t.string "bracket_exacta_1_number_1"
    t.string "bracket_exacta_1_number_2"
    t.integer "bracket_exacta_1_odds"
    t.string "bracket_exacta_2_number_1"
    t.string "bracket_exacta_2_number_2"
    t.integer "bracket_exacta_2_odds"
    t.string "bracket_exacta_3_number_1"
    t.string "bracket_exacta_3_number_2"
    t.integer "bracket_exacta_3_odds"
    t.string "quinella_1_horse_number_1"
    t.string "quinella_1_horse_number_2"
    t.integer "quinella_1_odds"
    t.string "quinella_2_horse_number_1"
    t.string "quinella_2_horse_number_2"
    t.integer "quinella_2_odds"
    t.string "quinella_3_horse_number_1"
    t.string "quinella_3_horse_number_2"
    t.integer "quinella_3_odds"
    t.string "quinella_place_1_horse_number_1"
    t.string "quinella_place_1_horse_number_2"
    t.integer "quinella_place_1_odds"
    t.string "quinella_place_2_horse_number_1"
    t.string "quinella_place_2_horse_number_2"
    t.integer "quinella_place_2_odds"
    t.string "quinella_place_3_horse_number_1"
    t.string "quinella_place_3_horse_number_2"
    t.integer "quinella_place_3_odds"
    t.string "quinella_place_4_horse_number_1"
    t.string "quinella_place_4_horse_number_2"
    t.integer "quinella_place_4_odds"
    t.string "quinella_place_5_horse_number_1"
    t.string "quinella_place_5_horse_number_2"
    t.integer "quinella_place_5_odds"
    t.string "quinella_place_6_horse_number_1"
    t.string "quinella_place_6_horse_number_2"
    t.integer "quinella_place_6_odds"
    t.string "quinella_place_7_horse_number_1"
    t.string "quinella_place_7_horse_number_2"
    t.integer "quinella_place_7_odds"
    t.string "exacta_1_horse_number_1"
    t.string "exacta_1_horse_number_2"
    t.integer "exacta_1_odds"
    t.string "exacta_2_horse_number_1"
    t.string "exacta_2_horse_number_2"
    t.integer "exacta_2_odds"
    t.string "exacta_3_horse_number_1"
    t.string "exacta_3_horse_number_2"
    t.integer "exacta_3_odds"
    t.string "exacta_4_horse_number_1"
    t.string "exacta_4_horse_number_2"
    t.integer "exacta_4_odds"
    t.string "exacta_5_horse_number_1"
    t.string "exacta_5_horse_number_2"
    t.integer "exacta_5_odds"
    t.string "exacta_6_horse_number_1"
    t.string "exacta_6_horse_number_2"
    t.integer "exacta_6_odds"
    t.string "trio_1_horse_number_1"
    t.string "trio_1_horse_number_2"
    t.string "trio_1_horse_number_3"
    t.integer "trio_1_odds"
    t.string "trio_2_horse_number_1"
    t.string "trio_2_horse_number_2"
    t.string "trio_2_horse_number_3"
    t.integer "trio_2_odds"
    t.string "trio_3_horse_number_1"
    t.string "trio_3_horse_number_2"
    t.string "trio_3_horse_number_3"
    t.integer "trio_3_odds"
    t.string "trifecta_1_horse_number_1"
    t.string "trifecta_1_horse_number_2"
    t.string "trifecta_1_horse_number_3"
    t.integer "trifecta_1_odds"
    t.string "trifecta_2_horse_number_1"
    t.string "trifecta_2_horse_number_2"
    t.string "trifecta_2_horse_number_3"
    t.integer "trifecta_2_odds"
    t.string "trifecta_3_horse_number_1"
    t.string "trifecta_3_horse_number_2"
    t.string "trifecta_3_horse_number_3"
    t.integer "trifecta_3_odds"
    t.string "trifecta_4_horse_number_1"
    t.string "trifecta_4_horse_number_2"
    t.string "trifecta_4_horse_number_3"
    t.integer "trifecta_4_odds"
    t.string "trifecta_5_horse_number_1"
    t.string "trifecta_5_horse_number_2"
    t.string "trifecta_5_horse_number_3"
    t.integer "trifecta_5_odds"
    t.string "trifecta_6_horse_number_1"
    t.string "trifecta_6_horse_number_2"
    t.string "trifecta_6_horse_number_3"
    t.integer "trifecta_6_odds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registered_horses", force: :cascade do |t|
    t.string "race_key_course_code"
    t.string "race_key_year"
    t.string "race_key_times"
    t.string "race_key_day"
    t.string "race_key_number_of_race"
    t.string "horse_name_code"
    t.string "horse_pedigree_registration_code"
    t.string "horse_name"
    t.string "horse_gender_code"
    t.string "horse_symbol_code"
    t.string "blinker_code"
    t.string "jockey_name"
    t.integer "burden_weight"
    t.string "apprentice_class"
    t.string "trainer_name"
    t.string "trainer_belong"
    t.float "idm"
    t.string "rising_degree"
    t.string "rotation"
    t.string "leg_quality"
    t.string "distance_aptitude"
    t.string "distance_aptitude_second"
    t.string "turf_aptitude_code"
    t.string "dart_aptitude_code"
    t.string "heaviness_aptitude_code"
    t.string "hoof_code"
    t.string "class_code"
    t.string "coat_color_code"
    t.string "other_data_link_key_prebious_run_1_race_score_key"
    t.string "other_data_link_key_prebious_run_2_race_score_key"
    t.string "other_data_link_key_prebious_run_3_race_score_key"
    t.string "other_data_link_key_prebious_run_4_race_score_key"
    t.string "other_data_link_key_prebious_run_5_race_score_key"
    t.string "other_data_link_key_prebious_run_1_race_key"
    t.string "other_data_link_key_prebious_run_2_race_key"
    t.string "other_data_link_key_prebious_run_3_race_key"
    t.string "other_data_link_key_prebious_run_4_race_key"
    t.string "other_data_link_key_prebious_run_5_race_key"
    t.string "jockey_code"
    t.string "trainer_code"
    t.integer "winning_prize"
    t.integer "income_prize"
    t.string "condition_class"
    t.string "exercise"
    t.string "body_type"
    t.string "body_type_total_1"
    t.string "body_type_total_2"
    t.string "body_type_total_3"
    t.string "horse_special_mention_1"
    t.string "horse_special_mention_2"
    t.string "horse_special_mention_3"
    t.float "expansion_forecast_data_ten_index"
    t.float "expansion_forecast_data_pace_index"
    t.float "expansion_forecast_data_ricing_index"
    t.float "expansion_forecast_data_position_index"
    t.float "horse_start_index"
    t.float "horse_lagging_rate"
    t.string "running_before_reference"
    t.string "reference_riding_horse_code"
    t.string "data_partition"
    t.string "leading_rank"
    t.string "reserve"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standard_odds", force: :cascade do |t|
    t.string "race_key_course_code"
    t.string "race_key_year"
    t.string "race_key_times"
    t.string "race_key_day"
    t.string "race_key_number_of_race"
    t.integer "registered_number"
    t.float "win_odds1"
    t.float "win_odds2"
    t.float "win_odds3"
    t.float "win_odds4"
    t.float "win_odds5"
    t.float "win_odds6"
    t.float "win_odds7"
    t.float "win_odds8"
    t.float "win_odds9"
    t.float "win_odds10"
    t.float "win_odds11"
    t.float "win_odds12"
    t.float "win_odds13"
    t.float "win_odds14"
    t.float "win_odds15"
    t.float "win_odds16"
    t.float "win_odds17"
    t.float "win_odds18"
    t.float "show_odds1"
    t.float "show_odds2"
    t.float "show_odds3"
    t.float "show_odds4"
    t.float "show_odds5"
    t.float "show_odds6"
    t.float "show_odds7"
    t.float "show_odds8"
    t.float "show_odds9"
    t.float "show_odds10"
    t.float "show_odds11"
    t.float "show_odds12"
    t.float "show_odds13"
    t.float "show_odds14"
    t.float "show_odds15"
    t.float "show_odds16"
    t.float "show_odds17"
    t.float "show_odds18"
    t.float "quinella1"
    t.float "quinella2"
    t.float "quinella3"
    t.float "quinella4"
    t.float "quinella5"
    t.float "quinella6"
    t.float "quinella7"
    t.float "quinella8"
    t.float "quinella9"
    t.float "quinella10"
    t.float "quinella11"
    t.float "quinella12"
    t.float "quinella13"
    t.float "quinella14"
    t.float "quinella15"
    t.float "quinella16"
    t.float "quinella17"
    t.float "quinella18"
    t.float "quinella19"
    t.float "quinella20"
    t.float "quinella21"
    t.float "quinella22"
    t.float "quinella23"
    t.float "quinella24"
    t.float "quinella25"
    t.float "quinella26"
    t.float "quinella27"
    t.float "quinella28"
    t.float "quinella29"
    t.float "quinella30"
    t.float "quinella31"
    t.float "quinella32"
    t.float "quinella33"
    t.float "quinella34"
    t.float "quinella35"
    t.float "quinella36"
    t.float "quinella37"
    t.float "quinella38"
    t.float "quinella39"
    t.float "quinella40"
    t.float "quinella41"
    t.float "quinella42"
    t.float "quinella43"
    t.float "quinella44"
    t.float "quinella45"
    t.float "quinella46"
    t.float "quinella47"
    t.float "quinella48"
    t.float "quinella49"
    t.float "quinella50"
    t.float "quinella51"
    t.float "quinella52"
    t.float "quinella53"
    t.float "quinella54"
    t.float "quinella55"
    t.float "quinella56"
    t.float "quinella57"
    t.float "quinella58"
    t.float "quinella59"
    t.float "quinella60"
    t.float "quinella61"
    t.float "quinella62"
    t.float "quinella63"
    t.float "quinella64"
    t.float "quinella65"
    t.float "quinella66"
    t.float "quinella67"
    t.float "quinella68"
    t.float "quinella69"
    t.float "quinella70"
    t.float "quinella71"
    t.float "quinella72"
    t.float "quinella73"
    t.float "quinella74"
    t.float "quinella75"
    t.float "quinella76"
    t.float "quinella77"
    t.float "quinella78"
    t.float "quinella79"
    t.float "quinella80"
    t.float "quinella81"
    t.float "quinella82"
    t.float "quinella83"
    t.float "quinella84"
    t.float "quinella85"
    t.float "quinella86"
    t.float "quinella87"
    t.float "quinella88"
    t.float "quinella89"
    t.float "quinella90"
    t.float "quinella91"
    t.float "quinella92"
    t.float "quinella93"
    t.float "quinella94"
    t.float "quinella95"
    t.float "quinella96"
    t.float "quinella97"
    t.float "quinella98"
    t.float "quinella99"
    t.float "quinella100"
    t.float "quinella101"
    t.float "quinella102"
    t.float "quinella103"
    t.float "quinella104"
    t.float "quinella105"
    t.float "quinella106"
    t.float "quinella107"
    t.float "quinella108"
    t.float "quinella109"
    t.float "quinella110"
    t.float "quinella111"
    t.float "quinella112"
    t.float "quinella113"
    t.float "quinella114"
    t.float "quinella115"
    t.float "quinella116"
    t.float "quinella117"
    t.float "quinella118"
    t.float "quinella119"
    t.float "quinella120"
    t.float "quinella121"
    t.float "quinella122"
    t.float "quinella123"
    t.float "quinella124"
    t.float "quinella125"
    t.float "quinella126"
    t.float "quinella127"
    t.float "quinella128"
    t.float "quinella129"
    t.float "quinella130"
    t.float "quinella131"
    t.float "quinella132"
    t.float "quinella133"
    t.float "quinella134"
    t.float "quinella135"
    t.float "quinella136"
    t.float "quinella137"
    t.float "quinella138"
    t.float "quinella139"
    t.float "quinella140"
    t.float "quinella141"
    t.float "quinella142"
    t.float "quinella143"
    t.float "quinella144"
    t.float "quinella145"
    t.float "quinella146"
    t.float "quinella147"
    t.float "quinella148"
    t.float "quinella149"
    t.float "quinella150"
    t.float "quinella151"
    t.float "quinella152"
    t.float "quinella153"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tv_programs", force: :cascade do |t|
    t.string "race_key_year"
    t.string "race_key_times"
    t.string "race_key_day"
    t.string "race_key_number_of_race"
    t.date "race_key_horse_number"
    t.string "race_condition_time_of_launch"
    t.integer "race_condition_distance"
    t.string "truck_turf_dirt_fault_code"
    t.string "truck_right_or_left"
    t.string "truck_inside_or_outside"
    t.integer "race_condition_class"
    t.string "race_condition_requirement"
    t.integer "race_condition_symbol"
    t.integer "race_condition_weight"
    t.integer "race_condition_grade"
    t.string "race_condition_race_name"
    t.string "race_condition_times"
    t.integer "race_condition_horse_count"
    t.string "race_condition_course"
    t.string "race_condition_holding_class"
    t.string "race_condition_race_name_short"
    t.string "race_condition_race_name_nine"
    t.string "data_class"
    t.integer "one_prize_money"
    t.integer "two_prize_money"
    t.integer "three_prize_money"
    t.integer "four_prize_money"
    t.integer "five_prize_money"
    t.integer "one_budget_cash_prize"
    t.integer "two_budget_cash_prize"
    t.string "ticket＿release_flg"
    t.string "win_five_flg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
