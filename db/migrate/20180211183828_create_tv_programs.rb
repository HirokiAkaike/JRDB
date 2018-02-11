class CreateTvPrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :tv_programs do |t|

      t.string :race_key_year
      t.string :race_key_times
      t.string :race_key_day
      t.string :race_key_number_of_race
      t.date :race_key_horse_number
      t.string :race_condition_time_of_launch
      t.integer :race_condition_distance
      t.string :truck_turf_dirt_fault_code
      t.string :truck_right_or_left
      t.string :truck_inside_or_outside
      t.integer :race_condition_class
      t.string :race_condition_requirement
      t.integer :race_condition_symbol
      t.integer :race_condition_weight
      t.integer :race_condition_grade
      t.string :race_condition_race_name
      t.string :race_condition_times
      t.integer :race_condition_horse_count
      t.string :race_condition_course
      t.string :race_condition_holding_class
      t.string :race_condition_race_name_short
      t.string :race_condition_race_name_nine
      t.string :data_class
      t.integer :one_prize_money
      t.integer :two_prize_money
      t.integer :three_prize_money
      t.integer :four_prize_money
      t.integer :five_prize_money
      t.integer :one_budget_cash_prize
      t.integer :two_budget_cash_prize
      t.string :ticket＿release_flg
      t.string :win_five_flg

      t.timestamps
    end
  end
end
