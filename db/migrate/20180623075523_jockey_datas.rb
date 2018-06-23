class JockeyDatas < ActiveRecord::Migration[5.1]
  def change
    create_table :jockey_datas do |t|
      t.string :jockey_code
      t.string :deregistration_flag
      t.string :deregistration_date
      t.string :jockey_name
      t.string :jockey_kana
      t.string :jockey_name_abbreviation
      t.string :affiliation_code
      t.string :it_belongs_to_the_region_name
      t.string :birthday
      t.string :the_first_license_year
      t.string :apprentice_division
      t.string :affiliation_stables
      t.string :jockey_comment
      t.string :comments_input_date
      t.integer :this_year_leading
      t.string :this_year_flat_results
      t.string :this_year_failure_results
      t.integer :this_year_the_number_of_special_wins
      t.integer :this_year_stakes_number_of_wins
      t.integer :last_year_leading
      t.string :last_year_flat_results
      t.string :last_year_failure_results
      t.integer :special_wins_the_number_of_last_year
      t.integer :stakes_number_of_wins_last_year
      t.string :total_flat_results
      t.string :total_failure_results
      t.string :data_date
    end
  end
end
