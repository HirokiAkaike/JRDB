class ScoreExtensionDatas < ActiveRecord::Migration[5.1]
  def change
    create_table :score_extension_datas do |t|
      t.string :race_key_course_code
      t.string :race_key_year
      t.string :race_key_times
      t.string :race_key_day
      t.string :race_key_number_of_race
      t.string :pedigree_registration_number
      t.string :date
      t.string :special_code_1
      t.string :special_code_2
      t.string :special_code_3
      t.string :special_code_4
      t.string :special_code_5
      t.string :special_code_6
      t.string :harness_code_1
      t.string :harness_code_2
      t.string :harness_code_3
      t.string :harness_code_4
      t.string :harness_code_5
      t.string :harness_code_6
      t.string :harness_code_7
      t.string :harness_code_8
      t.string :overall_1
      t.string :overall_2
      t.string :overall_3
      t.string :left_front_1
      t.string :left_front_2
      t.string :left_front_3
      t.string :right_front_1
      t.string :right_front_2
      t.string :right_front_3
      t.string :left_after_1
      t.string :left_after_2
      t.string :left_after_3
      t.string :right_after_1
      t.string :right_after_2
      t.string :right_after_3
      t.string :paddock_comments
      t.string :ashimoto_comment
      t.string :harness_other_comments
      t.string :race_comments
      t.string :hami
      t.string :vantage
      t.string :horseshoes
      t.string :hoof_state
      t.string :zoe
      t.string :honekobu
      t.string :reserve
      t.string :new_line
    end
  end
end
