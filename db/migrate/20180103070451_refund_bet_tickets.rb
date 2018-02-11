class RefundBetTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :refund_bet_tickets do |t|
      #レースキー
      t.string :race_key_course_code
      t.string :race_key_year
      t.string :race_key_times
      t.string :race_key_day
      t.string :race_key_number_of_race
      #単勝
      t.string :win_horse_number_1
      t.integer :win_odds_1
      t.string :win_horse_number_2
      t.integer :win_odds_2
      t.string :win_horse_number_3
      t.integer :win_odds_3
      #複勝
      t.string :show_horse_number_1
      t.integer :show_odds_1
      t.string :show_horse_number_2
      t.integer :show_odds_2
      t.string :show_horse_number_3
      t.integer :show_odds_3
      t.string :show_horse_number_4
      t.integer :show_odds_4
      t.string :show_horse_number_5
      t.integer :show_odds_5
      #枠連
      t.string :bracket_exacta_1_number_1
      t.string :bracket_exacta_1_number_2
      t.integer :bracket_exacta_1_odds
      t.string :bracket_exacta_2_number_1
      t.string :bracket_exacta_2_number_2
      t.integer :bracket_exacta_2_odds
      t.string :bracket_exacta_3_number_1
      t.string :bracket_exacta_3_number_2
      t.integer :bracket_exacta_3_odds
      #馬連
      t.string :quinella_1_horse_number_1
      t.string :quinella_1_horse_number_2
      t.integer :quinella_1_odds
      t.string :quinella_2_horse_number_1
      t.string :quinella_2_horse_number_2
      t.integer :quinella_2_odds
      t.string :quinella_3_horse_number_1
      t.string :quinella_3_horse_number_2
      t.integer :quinella_3_odds
      #ワイド
      t.string :quinella_place_1_horse_number_1
      t.string :quinella_place_1_horse_number_2
      t.integer :quinella_place_1_odds
      t.string :quinella_place_2_horse_number_1
      t.string :quinella_place_2_horse_number_2
      t.integer :quinella_place_2_odds
      t.string :quinella_place_3_horse_number_1
      t.string :quinella_place_3_horse_number_2
      t.integer :quinella_place_3_odds
      t.string :quinella_place_4_horse_number_1
      t.string :quinella_place_4_horse_number_2
      t.integer :quinella_place_4_odds
      t.string :quinella_place_5_horse_number_1
      t.string :quinella_place_5_horse_number_2
      t.integer :quinella_place_5_odds
      t.string :quinella_place_6_horse_number_1
      t.string :quinella_place_6_horse_number_2
      t.integer :quinella_place_6_odds
      t.string :quinella_place_7_horse_number_1
      t.string :quinella_place_7_horse_number_2
      t.integer :quinella_place_7_odds
      #馬単
      t.string :exacta_1_horse_number_1
      t.string :exacta_1_horse_number_2
      t.integer :exacta_1_odds
      t.string :exacta_2_horse_number_1
      t.string :exacta_2_horse_number_2
      t.integer :exacta_2_odds
      t.string :exacta_3_horse_number_1
      t.string :exacta_3_horse_number_2
      t.integer :exacta_3_odds
      t.string :exacta_4_horse_number_1
      t.string :exacta_4_horse_number_2
      t.integer :exacta_4_odds
      t.string :exacta_5_horse_number_1
      t.string :exacta_5_horse_number_2
      t.integer :exacta_5_odds
      t.string :exacta_6_horse_number_1
      t.string :exacta_6_horse_number_2
      t.integer :exacta_6_odds
      #3連複
      t.string :trio_1_horse_number_1
      t.string :trio_1_horse_number_2
      t.string :trio_1_horse_number_3
      t.integer :trio_1_odds
      t.string :trio_2_horse_number_1
      t.string :trio_2_horse_number_2
      t.string :trio_2_horse_number_3
      t.integer :trio_2_odds
      t.string :trio_3_horse_number_1
      t.string :trio_3_horse_number_2
      t.string :trio_3_horse_number_3
      t.integer :trio_3_odds
      #3連単
      t.string :trifecta_1_horse_number_1
      t.string :trifecta_1_horse_number_2
      t.string :trifecta_1_horse_number_3
      t.integer :trifecta_1_odds
      t.string :trifecta_2_horse_number_1
      t.string :trifecta_2_horse_number_2
      t.string :trifecta_2_horse_number_3
      t.integer :trifecta_2_odds
      t.string :trifecta_3_horse_number_1
      t.string :trifecta_3_horse_number_2
      t.string :trifecta_3_horse_number_3
      t.integer :trifecta_3_odds
      t.string :trifecta_4_horse_number_1
      t.string :trifecta_4_horse_number_2
      t.string :trifecta_4_horse_number_3
      t.integer :trifecta_4_odds
      t.string :trifecta_5_horse_number_1
      t.string :trifecta_5_horse_number_2
      t.string :trifecta_5_horse_number_3
      t.integer :trifecta_5_odds
      t.string :trifecta_6_horse_number_1
      t.string :trifecta_6_horse_number_2
      t.string :trifecta_6_horse_number_3
      t.integer :trifecta_6_odds

      t.timestamps
    end
  end
end
