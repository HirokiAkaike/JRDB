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
              race_key_course_code: disassembleTvProgram.getRaceKeyCourseCode,
              race_key_year: disassembleTvProgram.getRaceKeyYear,
              race_key_times: disassembleTvProgram.getRaceKeyTimes,
              race_key_day: disassembleTvProgram.getRaceKeyDay,
              race_key_number_of_race: disassembleTvProgram.getRaceKeyNumberOfRace,
              race_key_horse_number: disassembleTvProgram.getRaceKeyHorseNumber,
              race_condition_time_of_launch: disassembleTvProgram.getRaceConditionTimeOfLaunch,
              race_condition_distance: disassembleTvProgram.getRaceConditionDistance,
              truck_turf_dirt_fault_code: disassembleTvProgram.getTruckTurfDirtFaultCode,
              truck_right_or_left: disassembleTvProgram.getTruckRightOrLeft,
              truck_inside_or_outside: disassembleTvProgram.getTruckInsideOrOutside,
              race_condition_class: disassembleTvProgram.getRaceConditionClass,
              race_condition_requirement: disassembleTvProgram.getRaceConditionRequirement,
              race_condition_symbol: disassembleTvProgram.getRaceConditionSymbol,
              race_condition_weight: disassembleTvProgram.getRaceConditionWeight,
              race_condition_grade: disassembleTvProgram.getRaceConditionGrade,
              race_condition_race_name: disassembleTvProgram.getRaceConditionRaceName,
              race_condition_times: disassembleTvProgram.getRaceConditionTimes,
              race_condition_horse_count: disassembleTvProgram.getRaceConditionHorseCount,
              race_condition_course: disassembleTvProgram.getRaceConditionCourse,
              race_condition_holding_class: disassembleTvProgram.getRaceConditionHoldingClass,
              race_condition_race_name_short: disassembleTvProgram.getRaceConditionRaceNameShort,
              race_condition_race_name_nine: disassembleTvProgram.getRaceConditionRaceNameNine,
              data_class: disassembleTvProgram.getDataClass,
              one_prize_money: disassembleTvProgram.getOnePrizeMoney,
              two_prize_money: disassembleTvProgram.getTwoPrizeMoney,
              three_prize_money: disassembleTvProgram.getThreePrizeMoney,
              four_prize_money: disassembleTvProgram.getFourPrizeMoney,
              five_prize_money: disassembleTvProgram.getFivePrizeMoney,
              one_budget_cash_prize: disassembleTvProgram.getOneBudgetCashPrize,
              two_budget_cash_prize: disassembleTvProgram.getTwoBudgetCashPrize,
              ticket_release_flg: disassembleTvProgram.getTicketReleaseFlg,
              win_five_flg: disassembleTvProgram.getWinFiveFlg
          )
          tv_programs << tv_program
        end
      end
      TvProgram.import tv_programs
    end
  end
end
