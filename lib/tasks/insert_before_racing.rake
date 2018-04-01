namespace :insert_before_racing do
  require_relative '../../app/helpers/disassemble_before_racing.rb'
  require_relative '../../app/models/before_racing.rb'
  require_relative '../../app/models/application_record.rb'
  BEFORE_RACING_TARGET_FILE = "db/resources/before_racing/**/*"

  desc "before_racing"
  task :before_racing => :environment do
    targetFilesPath = Dir.glob BEFORE_RACING_TARGET_FILE
    targetFilesPath.each do |filePath|
      before_racings = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_before_racing = DisassembleBeforeRacing.new(line)
          before_racing = BeforeRacing.new(
              race_key_course_code: disassemble_before_racing.getRaceKeyCourseCode,
              race_key_year: disassemble_before_racing.getRaceKeyYear,
              race_key_times: disassemble_before_racing.getRaceKeyTimes,
              race_key_day: disassemble_before_racing.getRaceKeyDay,
              race_key_number_of_race: disassemble_before_racing.getRaceKeyNumberOfRace,
              race_key_horse_number: disassemble_before_racing.getRaceKeyHorseNumber,
              race_performance_pedigree_register_code: disassemble_before_racing.getRacePerformancePedigreeRegisterCode,
              race_performance_date_ymd: disassemble_before_racing.getRacePerformanceDateYmd,
              race_performance_horse_name: disassemble_before_racing.getRacePerformanceHorseName,
              race_condition_distance: disassemble_before_racing.getRaceConditionDistance,
              truck_turf_dirt_fault_code: disassemble_before_racing.getTruckTurfDirtFaultCode,
              truck_right_or_left: disassemble_before_racing.getTruckRightOrLeft,
              truck_inside_or_outside: disassemble_before_racing.getTruckInsideOrOutside,
              race_condition_riding_ground_condition: disassemble_before_racing.getRaceConditionRidingGroundCondition,
              race_condition_class: disassemble_before_racing.getRaceConditionClass,
              race_condition_requirement: disassemble_before_racing.getRaceConditionRequirement,
              race_condition_symbol: disassemble_before_racing.getRaceConditionSymbol,
              race_condition_weight: disassemble_before_racing.getRaceConditionWeight,
              race_condition_grade: disassemble_before_racing.getRaceConditionGrade,
              race_condition_race_name: disassemble_before_racing.getRaceConditionRaceName,
              race_condition_horse_count: disassemble_before_racing.getRaceConditionHorseCount,
              race_condition_race_name_short: disassemble_before_racing.getRaceConditionRaceNameShort,
              horse_race_performance_ranking: disassemble_before_racing.getHorseRacePerformanceRanking,
              horse_race_performance_abnormal_classification: disassemble_before_racing.getHorseRacePerformanceAbnormalClassification,
              horse_race_performance_time: disassemble_before_racing.getHorseRacePerformanceTime,
              horse_race_performance_basis_weight: disassemble_before_racing.getHorseRacePerformanceBasisWeight,
              horse_race_performance_jockey_name: disassemble_before_racing.getHorseRacePerformanceJockeyName,
              horse_race_performance_trainer_name: disassemble_before_racing.getHorseRacePerformanceTrainerName,
              horse_race_performance_confirm_win_odds: disassemble_before_racing.getHorseRacePerformanceConfirmWinOdds,
              horse_race_performance_confirm_win_popular_rank: disassemble_before_racing.getHorseRacePerformanceConfirmWinPopularRank,
              jrdb_idm: disassemble_before_racing.getJrdbIdm,
              jrdb_primary_point: disassemble_before_racing.getJrdbPrimaryPoint,
              jrdb_riding_ground_reference: disassemble_before_racing.getJrdbRidingGroundReference,
              jrdb_pace: disassemble_before_racing.getJrdbPace,
              jrdb_lagging: disassemble_before_racing.getJrdbLagging,
              jrdb_position_of_race: disassemble_before_racing.getJrdbPositionOfRace,
              jrdb_unfavorable: disassemble_before_racing.getJrdbUnfavorable,
              jrdb_unfavorable_before: disassemble_before_racing.getJrdbUnfavorableBefore,
              jrdb_unfavorable_middle: disassemble_before_racing.getJrdbUnfavorableMiddle,
              jrdb_unfavorable_after: disassemble_before_racing.getJrdbUnfavorableAfter,
              jrdb_race: disassemble_before_racing.getJrdbRace,
              jrdb_course_removal: disassemble_before_racing.getJrdbCourseRemoval,
              jrdb_rising_code: disassemble_before_racing.getJrdbRisingCode,
              jrdb_class_code: disassemble_before_racing.getJrdbClassCode,
              jrdb_horse_body_code: disassemble_before_racing.getJrdbHorseBodyCode,
              jrdb_sign_code: disassemble_before_racing.getJrdbSignCode,
              jrdb_race_pace: disassemble_before_racing.getJrdbRacePace,
              jrdb_horse_pace: disassemble_before_racing.getJrdbHorsePace,
              jrdb_ten_index: disassemble_before_racing.getJrdbTenIndex,
              jrdb_rising_index_code: disassemble_before_racing.getJrdbRisingIndexCode,
              jrdb_pace_index: disassemble_before_racing.getJrdbPaceIndex,
              jrdb_race_pace_index: disassemble_before_racing.getJrdbRacePaceIndex,
              jrdb_first_second_horse_name: disassemble_before_racing.getJrdbFirstSecondHorseName,
              jrdb_first_second_horse_time_reference: disassemble_before_racing.getJrdbFirstSecondHorseTimeReference,
              jrdb_before_3f_time: disassemble_before_racing.getJrdbBefore3FTime,
              jrdb_after_3f_time: disassemble_before_racing.getJrdbAfter3FTime,
              jrdb_remarks: disassemble_before_racing.getJrdbRemarks,
              reserve: disassemble_before_racing.getReserve,
              definitive_multiple_win_odds_under: disassemble_before_racing.getDefinitiveMultipleWinOddsUnder,
              ten_clock_win_odds: disassemble_before_racing.getTenClockWinOdds,
              ten_clock_show_odds: disassemble_before_racing.getTenClockShowOdds,
              corner_order_1: disassemble_before_racing.getCornerOrder1,
              corner_order_2: disassemble_before_racing.getCornerOrder2,
              corner_order_3: disassemble_before_racing.getCornerOrder3,
              corner_order_4: disassemble_before_racing.getCornerOrder4,
              first_difference_before_3f: disassemble_before_racing.getFirstDifferenceBefore3F,
              first_difference_after_3f: disassemble_before_racing.getFirstDifferenceAfter3F,
              jockey_code: disassemble_before_racing.getJockeyCode,
              trainer_code: disassemble_before_racing.getTrainerCode,
              horse_weight: disassemble_before_racing.getHorseWeight,
              horse_weight_gain: disassemble_before_racing.getHorseWeightGain,
              weather_code: disassemble_before_racing.getWeatherCode,
              course: disassemble_before_racing.getCourse,
              race_leg_quality: disassemble_before_racing.getRaceLegQuality,
              win: disassemble_before_racing.getWin,
              show: disassemble_before_racing.getShow,
              prize_money: disassemble_before_racing.getPrizeMoney,
              Income_prize: disassemble_before_racing.getIncomePrize,
              race_pace_flow: disassemble_before_racing.getRacePaceFlow,
              horse_pace_flow: disassemble_before_racing.getHorsePaceFlow,
              four_angles_courses_collecting: disassemble_before_racing.getFourAnglesCoursesCollecting
          )
          before_racings << before_racing
        end
      end
      BeforeRacing.import before_racings
    end
  end
end
