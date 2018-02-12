namespace :insert_tv_program do
  require_relative '../../app/helpers/disassemble_tv_program.rb'
  require_relative '../../app/models/tv_program.rb'
  require_relative '../../app/models/application_record.rb'
  TV_PROGRAM_TARGET_FILE = "db/resources/tv_program/**/*"

  desc "tv_program"
  task :tv_program => :environment do
    targetFilesPath = Dir.glob TV_PROGRAM_TARGET_FILE
    targetFilesPath.each do |filePath|
      tv_programs = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassembleTvProgram = DisassembleTvProgram.new(line)
          tv_program = TvProgram.new(
              race_key_course_code: disassembleTvProgram.getRaceKeyCourseCodeRaceKeyCourseCode,
              race_key_year: disassembleTvProgram.getRaceKeyYearRaceKeyYear,
              race_key_times: disassembleTvProgram.getRaceKeyTimesRaceKeyTimes,
              race_key_day: disassembleTvProgram.getRaceKeyDayRaceKeyDay,
              race_key_number_of_race: disassembleTvProgram.getRaceKeyNumberOfRaceRaceKeyNumberOfRace,
              race_key_horse_number: disassembleTvProgram.getRaceKeyHorseNumberRaceKeyHorseNumber,
              race_condition_time_of_launch: disassembleTvProgram.getRaceConditionTimeOfLaunchRaceConditionTimeOfLaunch,
              race_condition_distance: disassembleTvProgram.getRaceConditionDistanceRaceConditionDistance,
              truck_turf_dirt_fault_code: disassembleTvProgram.getTruckTurfDirtFaultCodeTruckTurfDirtFaultCode,
              truck_right_or_left: disassembleTvProgram.getTruckRightOrLeftTruckRightOrLeft,
              truck_inside_or_outside: disassembleTvProgram.getTruckInsideOrOutsideTruckInsideOrOutside,
              race_condition_class: disassembleTvProgram.getRaceConditionClassRaceConditionClass,
              race_condition_requirement: disassembleTvProgram.getRaceConditionRequirementRaceConditionRequirement,
              race_condition_symbol: disassembleTvProgram.getRaceConditionSymbolRaceConditionSymbol,
              race_condition_weight: disassembleTvProgram.getRaceConditionWeightRaceConditionWeight,
              race_condition_grade: disassembleTvProgram.getRaceConditionGradeRaceConditionGrade,
              race_condition_race_name: disassembleTvProgram.getRaceConditionRaceNameRaceConditionRaceName,
              race_condition_times: disassembleTvProgram.getRaceConditionTimesRaceConditionTimes,
              race_condition_horse_count: disassembleTvProgram.getRaceConditionHorseCountRaceConditionHorseCount,
              race_condition_course: disassembleTvProgram.getRaceConditionCourseRaceConditionCourse,
              race_condition_holding_class: disassembleTvProgram.getRaceConditionHoldingClassRaceConditionHoldingClass,
              race_condition_race_name_short: disassembleTvProgram.getRaceConditionRaceNameShortRaceConditionRaceNameShort,
              race_condition_race_name_nine: disassembleTvProgram.getRaceConditionRaceNameNineRaceConditionRaceNameNine,
              data_class: disassembleTvProgram.getDataClassDataClass,
              one_prize_money: disassembleTvProgram.getOnePrizeMoneyOnePrizeMoney,
              two_prize_money: disassembleTvProgram.getTwoPrizeMoneyTwoPrizeMoney,
              three_prize_money: disassembleTvProgram.getThreePrizeMoneyThreePrizeMoney,
              four_prize_money: disassembleTvProgram.getFourPrizeMoneyFourPrizeMoney,
              five_prize_money: disassembleTvProgram.getFivePrizeMoneyFivePrizeMoney,
              one_budget_cash_prize: disassembleTvProgram.getOneBudgetCashPrizeOneBudgetCashPrize,
              two_budget_cash_prize: disassembleTvProgram.getTwoBudgetCashPrizeTwoBudgetCashPrize,
              ticket_release_flg: disassembleTvProgram.getTicket_ReleaseFlgTicket_ReleaseFlg,
              win_five_flg: disassembleTvProgram.getWinFiveFlgWinFiveFlg

              )
          tv_programs << tv_program
        end
      end
      TvProgram.import tv_programs
    end
  end
end
