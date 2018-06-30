namespace :insert_refund_information_datas do
  require_relative '../../app/helpers/disassemble_refund_information_data.rb'
  require_relative '../../app/models/refund_information_data.rb'
  require_relative '../../app/models/application_record.rb'
  REFUND_INFORMATION_DATA_TARGET_FILE = "db/resources/refund_information_data/**/*"

  desc "refund_information_data"
  task :refund_information_data => :environment do
    targetFilesPath = Dir.glob REFUND_INFORMATION_DATA_TARGET_FILE
    targetFilesPath.each do |filePath|
      refund_information_datas = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassembleRefundInformationData = DisassembleRefundInformationData.new(line)
          refund_information_data = RefundInformationData.new(
              race_key_course_code: disassemble_refund_information_data.getRaceKeyCourseCode,
              race_key_year: disassemble_refund_information_data.getRaceKeyYear,
              race_key_times: disassemble_refund_information_data.getRaceKeyTimes,
              race_key_day: disassemble_refund_information_data.getRaceKeyDay,
              race_key_number_of_race: disassemble_refund_information_data.getRaceKeyNumberOfRace,
              win_horse_number_1: disassemble_refund_information_data.getWinHorseNumber1,
              win_refund_1: disassemble_refund_information_data.getWinRefund1,
              win_horse_number_2: disassemble_refund_information_data.getWinHorseNumber2,
              win_refund_2: disassemble_refund_information_data.getWinRefund2,
              win_horse_number_3: disassemble_refund_information_data.getWinHorseNumber3,
              win_refund_3: disassemble_refund_information_data.getWinRefund3,
              multiple_wins_refund_horse_number_1: disassemble_refund_information_data.getMultipleWinsRefundHorseNumber1,
              multiple_wins_refund_1: disassemble_refund_information_data.getMultipleWinsRefund1,
              multiple_wins_reimbursement_horse_number_2: disassemble_refund_information_data.getMultipleWinsReimbursementHorseNumber2,
              multiple_wins_refund_2: disassemble_refund_information_data.getMultipleWinsRefund2,
              multiple_wins_reimbursement_horse_number_3: disassemble_refund_information_data.getMultipleWinsReimbursementHorseNumber3,
              multiple_wins_refund_3: disassemble_refund_information_data.getMultipleWinsRefund3,
              multiple_wins_reimbursement_horse_number_4: disassemble_refund_information_data.getMultipleWinsReimbursementHorseNumber4,
              double_wins_refund_4: disassemble_refund_information_data.getDoubleWinsRefund4,
              multiple_wins_reimbursement_horse_number_5: disassemble_refund_information_data.getMultipleWinsReimbursementHorseNumber5,
              multiple_wins_refund_5: disassemble_refund_information_data.getMultipleWinsRefund5,
              wakuren_frame_program_combined_1: disassemble_refund_information_data.getWakurenFrameProgramCombined1,
              wakuren_refund_refund_1: disassemble_refund_information_data.getWakurenRefundRefund1,
              wakuren_frame_program_together_2: disassemble_refund_information_data.getWakurenFrameProgramTogether2,
              wakuren_reimbursement_refund_2: disassemble_refund_information_data.getWakurenReimbursementRefund2,
              wakuren_frame_program_combined_3: disassemble_refund_information_data.getWakurenFrameProgramCombined3,
              wakuren_reimbursement_refund_3: disassemble_refund_information_data.getWakurenReimbursementRefund3,
              valentin_horse_number_combination_1: disassemble_refund_information_data.getValentinHorseNumberCombination1,
              valentin_refund_1: disassemble_refund_information_data.getValentinRefund1,
              valentin_horse_number_combination_2: disassemble_refund_information_data.getValentinHorseNumberCombination2,
              valentin_refund_2: disassemble_refund_information_data.getValentinRefund2,
              valentin_horse_number_combination_3: disassemble_refund_information_data.getValentinHorseNumberCombination3,
              valentin_refund_3: disassemble_refund_information_data.getValentinRefund3,
              wide_horse_number_combination_1: disassemble_refund_information_data.getWideHorseNumberCombination1,
              wide_withdrawal_1: disassemble_refund_information_data.getWideWithdrawal1,
              wide_horse_number_combination_2: disassemble_refund_information_data.getWideHorseNumberCombination2,
              wide_reimbursement_2: disassemble_refund_information_data.getWideReimbursement2,
              wide_horse_number_combination_3: disassemble_refund_information_data.getWideHorseNumberCombination3,
              wide_reimbursement_3: disassemble_refund_information_data.getWideReimbursement3,
              wide_horse_number_combination_4: disassemble_refund_information_data.getWideHorseNumberCombination4,
              wide_refund_4: disassemble_refund_information_data.getWideRefund4,
              wide_horse_number_combination_5: disassemble_refund_information_data.getWideHorseNumberCombination5,
              wide_refund_5: disassemble_refund_information_data.getWideRefund5,
              wide_horse_number_combination_6: disassemble_refund_information_data.getWideHorseNumberCombination6,
              wide_reimbursement_6: disassemble_refund_information_data.getWideReimbursement6,
              wide_horse_number_combination_7: disassemble_refund_information_data.getWideHorseNumberCombination7,
              wide_reimbursement_7: disassemble_refund_information_data.getWideReimbursement7,
              horse_single_horse_number_combination_1: disassemble_refund_information_data.getHorseSingleHorseNumberCombination1,
              horse_single_reimbursement_1: disassemble_refund_information_data.getHorseSingleReimbursement1,
              horse_single_horse_number_combination_2: disassemble_refund_information_data.getHorseSingleHorseNumberCombination2,
              horse_single_reimbursement_2: disassemble_refund_information_data.getHorseSingleReimbursement2,
              horse_single_horse_number_combination_3: disassemble_refund_information_data.getHorseSingleHorseNumberCombination3,
              horse_single_reimbursement_3: disassemble_refund_information_data.getHorseSingleReimbursement3,
              horse_single_horse_number_combination_4: disassemble_refund_information_data.getHorseSingleHorseNumberCombination4,
              horse_single_reimbursement_4: disassemble_refund_information_data.getHorseSingleReimbursement4,
              horse_single_horse_number_combination_5: disassemble_refund_information_data.getHorseSingleHorseNumberCombination5,
              horse_single_reimbursement_5: disassemble_refund_information_data.getHorseSingleReimbursement5,
              horse_single_horse_number_combination_6: disassemble_refund_information_data.getHorseSingleHorseNumberCombination6,
              horse_single_reimbursement_6: disassemble_refund_information_data.getHorseSingleReimbursement6,
              triple_double_horse_number_combination_1: disassemble_refund_information_data.getTripleDoubleHorseNumberCombination1,
              triple_double_withdrawal_1: disassemble_refund_information_data.getTripleDoubleWithdrawal1,
              triple_double_horse_number_combination_2: disassemble_refund_information_data.getTripleDoubleHorseNumberCombination2,
              triple_double_reimbursement_2: disassemble_refund_information_data.getTripleDoubleReimbursement2,
              triple_double_horse_number_combination_3: disassemble_refund_information_data.getTripleDoubleHorseNumberCombination3,
              triple_double_reimbursement_3: disassemble_refund_information_data.getTripleDoubleReimbursement3,
              trifecta_horse_number_combination_1: disassemble_refund_information_data.getTrifectaHorseNumberCombination1,
              trifecta_withdrawal_1: disassemble_refund_information_data.getTrifectaWithdrawal1,
              trifecta_horse_number_combination_2: disassemble_refund_information_data.getTrifectaHorseNumberCombination2,
              trifecta_reimbursement_2: disassemble_refund_information_data.getTrifectaReimbursement2,
              trifecta_horse_number_combination_3: disassemble_refund_information_data.getTrifectaHorseNumberCombination3,
              trifecta_reimbursement_3: disassemble_refund_information_data.getTrifectaReimbursement3,
              trifecta_horse_number_combination_4: disassemble_refund_information_data.getTrifectaHorseNumberCombination4,
              trifecta_refund_4: disassemble_refund_information_data.getTrifectaRefund4,
              trifecta_horse_number_combination_5: disassemble_refund_information_data.getTrifectaHorseNumberCombination5,
              trifecta_refund_5: disassemble_refund_information_data.getTrifectaRefund5,
              trifecta_horse_number_combination_6: disassemble_refund_information_data.getTrifectaHorseNumberCombination6,
              trifecta_reimbursement_6: disassemble_refund_information_data.getTrifectaReimbursement6,
              preliminary_1: disassemble_refund_information_data.getPreliminary1,
              and_2: disassemble_refund_information_data.getAnd2,
          )
          refund_information_datas << refund_information_data
        end
      end
      RefundInformationData.import refund_information_datas
    end
  end
end
