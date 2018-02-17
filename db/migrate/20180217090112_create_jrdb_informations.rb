class CreateJrdbInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :jrdb_informations do |t|
      t.string :race_key_course_code
      t.string :race_key_year
      t.string :race_key_times
      t.string :race_key_day
      t.string :race_key_number_of_race
      t.string :race_horse_number
      t.string :pedigree_register_code
      t.string :horse_name
      t.float :standard_odds
      t.float :standard_show_odds
      t.float :cid_training_point
      t.float :cid_racing_stable_point
      t.float :cid_point
      t.integer :cid
      t.float :ls_index
      t.string :ls_evaluation
      t.string :em
      t.string :racing_stable_bb_mark
      t.integer :racing_stable_bb_win_recovery_rate
      t.integer :racing_stable_bb_quinella_rate
      t.string :jockey_bb_mark
      t.integer :jockey_bb_win_recovery_rate
      t.integer :jockey_bb_quinella_rate

      t.timestamps
    end
  end
end
