namespace :insert_past_race_result do
  require_relative '../../app/helpers/../../app/helpers/disassemble_refund_bet_ticket.rb'
  require_relative '../../app/models/refund_bet_ticket.rb'
  require_relative '../../app/models/application_record.rb'
  TARGET_FILE = "db/resources/refund_bet_ticket/**/*"

  desc "refund_bet_ticket"
  task :refund_bet_ticket => :environment do
    targetFilesPath = Dir.glob TARGET_FILE
    targetFilesPath.each do |filePath|
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassembleRefundTicket = DisassembleRefundBetTicket.new(line)
          refundBetTicket = RefundBetTicket.new(
              race_key_course_code: disassembleRefundTicket.getRaceCourseCode,
              race_key_year: disassembleRefundTicket.getYearCode,
              race_key_times: disassembleRefundTicket.getTimesCode,
              race_key_day: disassembleRefundTicket.getDayCode,
              race_key_number_of_race: disassembleRefundTicket.getNumberOfRace,
              win_horse_number_1: disassembleRefundTicket.getWinHorseNumber_1,
              win_odds_1: disassembleRefundTicket.getWinOdds_1,
              win_horse_number_2: disassembleRefundTicket.getWinHorseNumber_2,
              win_odds_2: disassembleRefundTicket.getWinHorseNumber_2,
              win_horse_number_3: disassembleRefundTicket.getWinHorseNumber_2,
              win_odds_3: disassembleRefundTicket.getWinOdds_3,
              show_horse_number_1: disassembleRefundTicket.getShowHorseNumber_1,
              show_odds_1: disassembleRefundTicket.getShowOdds_1,
              show_horse_number_2: disassembleRefundTicket.getShowHorseNumber_2,
              show_odds_2: disassembleRefundTicket.getShowOdds_2,
              show_horse_number_3: disassembleRefundTicket.getShowHorseNumber_3,
              show_odds_3: disassembleRefundTicket.getShowOdds_3,
              show_horse_number_4: disassembleRefundTicket.getShowHorseNumber_4,
              show_odds_4: disassembleRefundTicket.getShowOdds_4,
              show_horse_number_5: disassembleRefundTicket.getShowHorseNumber_5,
              show_odds_5: disassembleRefundTicket.getShowOdds_5,
              bracket_exacta_1_number_1: disassembleRefundTicket.getBracketExacta_1_Number_1,
              bracket_exacta_1_number_2: disassembleRefundTicket.getBracketExacta_1_Number_2,
              bracket_exacta_1_odds: disassembleRefundTicket.getBracketExacta_1_Odds,
              bracket_exacta_2_number_1: disassembleRefundTicket.getBracketExacta_2_Number_1,
              bracket_exacta_2_number_2: disassembleRefundTicket.getBracketExacta_2_Number_2,
              bracket_exacta_2_odds: disassembleRefundTicket.getBracketExacta_2_Odds,
              bracket_exacta_3_number_1: disassembleRefundTicket.getBracketExacta_3_Number_1,
              bracket_exacta_3_number_2: disassembleRefundTicket.getBracketExacta_3_Number_2,
              bracket_exacta_3_odds: disassembleRefundTicket.getBracketExacta_3_Odds,
              quinella_1_horse_number_1: disassembleRefundTicket.getQuinella_1_HorseNumber_1,
              quinella_1_horse_number_2: disassembleRefundTicket.getQuinella_1_HorseNumber_2,
              quinella_1_odds: disassembleRefundTicket.getQuinella_1_Odds,
              quinella_2_horse_number_1: disassembleRefundTicket.getQuinella_2_HorseNumber_1,
              quinella_2_horse_number_2: disassembleRefundTicket.getQuinella_2_HorseNumber_2,
              quinella_2_odds: disassembleRefundTicket.getQuinella_2_Odds,
              quinella_3_horse_number_1: disassembleRefundTicket.getQuinella_3_HorseNumber_1,
              quinella_3_horse_number_2: disassembleRefundTicket.getQuinella_3_HorseNumber_2,
              quinella_3_odds: disassembleRefundTicket.getQuinella_3_Odds,
              quinella_place_1_horse_number_1: disassembleRefundTicket.getQuinellaPlace_1_HorseNumber_1,
              quinella_place_1_horse_number_2: disassembleRefundTicket.getQuinellaPlace_1_HorseNumber_2,
              quinella_place_1_odds: disassembleRefundTicket.getQuinellaPlace_1_Odds,
              quinella_place_2_horse_number_1: disassembleRefundTicket.getQuinellaPlace_2_HorseNumber_1,
              quinella_place_2_horse_number_2: disassembleRefundTicket.getQuinella_2_HorseNumber_2,
              quinella_place_2_odds: disassembleRefundTicket.getQuinellaPlace_2_Odds,
              quinella_place_3_horse_number_1: disassembleRefundTicket.getQuinellaPlace_3_HorseNumber_1,
              quinella_place_3_horse_number_2: disassembleRefundTicket.getQuinellaPlace_3_HorseNumber_2,
              quinella_place_3_odds: disassembleRefundTicket.getQuinellaPlace_3_Odds,
              quinella_place_4_horse_number_1: disassembleRefundTicket.getQuinellaPlace_4_HorseNumber_1,
              quinella_place_4_horse_number_2: disassembleRefundTicket.getQuinellaPlace_4_HorseNumber_2,
              quinella_place_4_odds: disassembleRefundTicket.getQuinellaPlace_4_Odds,
              quinella_place_5_horse_number_1: disassembleRefundTicket.getQuinellaPlace_5_HorseNumber_1,
              quinella_place_5_horse_number_2: disassembleRefundTicket.getQuinellaPlace_5_HorseNumber_2,
              quinella_place_5_odds: disassembleRefundTicket.getQuinellaPlace_5_Odds,
              quinella_place_6_horse_number_1: disassembleRefundTicket.getQuinellaPlace_6_HorseNumber_1,
              quinella_place_6_horse_number_2: disassembleRefundTicket.getQuinellaPlace_6_HorseNumber_2,
              quinella_place_6_odds: disassembleRefundTicket.getQuinellaPlace_6_Odds,
              quinella_place_7_horse_number_1: disassembleRefundTicket.getQuinellaPlace_7_HorseNumber_1,
              quinella_place_7_horse_number_2: disassembleRefundTicket.getQuinellaPlace_7_HorseNumber_2,
              quinella_place_7_odds: disassembleRefundTicket.getQuinellaPlace_7_Odds,
              exacta_1_horse_number_1: disassembleRefundTicket.getExacta_1_HorseNumber_1,
              exacta_1_horse_number_2: disassembleRefundTicket.getExacta_1_HorseNumber_2,
              exacta_1_odds: disassembleRefundTicket.getExacta_1_Odds,
              exacta_2_horse_number_1: disassembleRefundTicket.getExacta_2_HorseNumber_1,
              exacta_2_horse_number_2: disassembleRefundTicket.getExacta_2_HorseNumber_2,
              exacta_2_odds: disassembleRefundTicket.getExacta_2_Odds,
              exacta_3_horse_number_1: disassembleRefundTicket.getExacta_3_HorseNumber_1,
              exacta_3_horse_number_2: disassembleRefundTicket.getExacta_3_HorseNumber_2,
              exacta_3_odds: disassembleRefundTicket.getExacta_3_Odds,
              exacta_4_horse_number_1: disassembleRefundTicket.getExacta_4_HorseNumber_1,
              exacta_4_horse_number_2: disassembleRefundTicket.getExacta_4_HorseNumber_2,
              exacta_4_odds: disassembleRefundTicket.getExacta_4_Odds,
              exacta_5_horse_number_1: disassembleRefundTicket.getExacta_5_HorseNumber_1,
              exacta_5_horse_number_2: disassembleRefundTicket.getExacta_5_HorseNumber_2,
              exacta_5_odds: disassembleRefundTicket.getExacta_5_Odds,
              exacta_6_horse_number_1: disassembleRefundTicket.getExacta_6_HorseNumber_1,
              exacta_6_horse_number_2: disassembleRefundTicket.getExacta_6_HorseNumber_2,
              exacta_6_odds: disassembleRefundTicket.getExacta_6_Odds,
              trio_1_horse_number_1: disassembleRefundTicket.getTrio_1_HorseNumber_1,
              trio_1_horse_number_2: disassembleRefundTicket.getTrio_1_HorseNumber_2,
              trio_1_horse_number_3: disassembleRefundTicket.getTrio_1_HorseNumber_3,
              trio_1_odds: disassembleRefundTicket.getTrio_1_Odds,
              trio_2_horse_number_1: disassembleRefundTicket.getTrio_2_HorseNumber_1,
              trio_2_horse_number_2: disassembleRefundTicket.getTrio_2_HorseNumber_2,
              trio_2_horse_number_3: disassembleRefundTicket.getTrio_2_HorseNumber_3,
              trio_2_odds: disassembleRefundTicket.getTrio_2_Odds,
              trio_3_horse_number_1: disassembleRefundTicket.getTrio_3_HorseNumber_1,
              trio_3_horse_number_2: disassembleRefundTicket.getTrio_3_HorseNumber_2,
              trio_3_horse_number_3: disassembleRefundTicket.getTrio_3_HorseNumber_3,
              trio_3_odds: disassembleRefundTicket.getTrio_3_Odds,
              trifecta_1_horse_number_1: disassembleRefundTicket.getTrifecta_1_HorseNumber_1,
              trifecta_1_horse_number_2: disassembleRefundTicket.getTrifecta_1_HorseNumber_2,
              trifecta_1_horse_number_3: disassembleRefundTicket.getTrifecta_1_HorseNumber_3,
              trifecta_1_odds: disassembleRefundTicket.getTrifecta_1_Odds,
              trifecta_2_horse_number_1: disassembleRefundTicket.getTrifecta_2_HorseNumber_1,
              trifecta_2_horse_number_2: disassembleRefundTicket.getTrifecta_2_HorseNumber_2,
              trifecta_2_horse_number_3: disassembleRefundTicket.getTrifecta_2_HorseNumber_3,
              trifecta_2_odds: disassembleRefundTicket.getTrifecta_2_Odds,
              trifecta_3_horse_number_1: disassembleRefundTicket.getTrifecta_3_HorseNumber_1,
              trifecta_3_horse_number_2: disassembleRefundTicket.getTrifecta_3_HorseNumber_2,
              trifecta_3_horse_number_3: disassembleRefundTicket.getTrifecta_3_HorseNumber_3,
              trifecta_3_odds: disassembleRefundTicket.getTrifecta_3_Odds,
              trifecta_4_horse_number_1: disassembleRefundTicket.getTrifecta_4_HorseNumber_1,
              trifecta_4_horse_number_2: disassembleRefundTicket.getTrifecta_4_HorseNumber_2,
              trifecta_4_horse_number_3: disassembleRefundTicket.getTrifecta_4_HorseNumber_3,
              trifecta_4_odds: disassembleRefundTicket.getTrifecta_4_Odds,
              trifecta_5_horse_number_1: disassembleRefundTicket.getTrifecta_5_HorseNumber_1,
              trifecta_5_horse_number_2: disassembleRefundTicket.getTrifecta_5_HorseNumber_2,
              trifecta_5_horse_number_3: disassembleRefundTicket.getTrifecta_5_HorseNumber_3,
              trifecta_5_odds: disassembleRefundTicket.getTrifecta_5_Odds,
              trifecta_6_horse_number_1: disassembleRefundTicket.getTrifecta_6_HorseNumber_1,
              trifecta_6_horse_number_2: disassembleRefundTicket.getTrifecta_6_HorseNumber_2,
              trifecta_6_horse_number_3: disassembleRefundTicket.getTrifecta_6_HorseNumber_3,
              trifecta_6_odds: disassembleRefundTicket.getTrifecta_6_Odds
          )
          refundBetTicket.save
        end
      end
    end
  end
end
