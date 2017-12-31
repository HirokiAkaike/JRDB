namespace :insert_past_race_result do
  require_relative '../../app/helpers/disassemble_past_race_result.rb'
  require_relative '../../app/models/past_race_result.rb'
  require_relative '../../app/models/application_record.rb'
  FILE_RELATIVE = "db/resources/SED171224.txt"

  desc "past_race_result"
  task :past_race_result => :environment do


    File.open(FILE_RELATIVE) do |file|
      file.each_line do |line|
        p line
        disassemblePastRaceResult = DisassemblePastRaceResult.new(line)
        pastRaceResult = PastRaceResult.new(
            race_key_course_code: disassemblePastRaceResult.getRaceCourseCode,
            race_key_year: disassemblePastRaceResult.getYearCode,
            race_key_times: disassemblePastRaceResult.getTimesCode,
            race_key_day: disassemblePastRaceResult.getDayCode,
            race_key_number_of_race: disassemblePastRaceResult.getNumberOfRace,
            race_key_horse_number: disassemblePastRaceResult.getHorseNumber,
            race_performance_pedigree_register_code: disassemblePastRaceResult.getRacePerformancePedigreeRegisterCode,
            race_performance_date_ymd: disassemblePastRaceResult.getRacePerformanceDateYmd,
            race_performance_horse_name: disassemblePastRaceResult.getRacePerformanceHorseName,
            race_condition_distance: disassemblePastRaceResult.getRaceConditionDistance,
            truck_turf_dirt_fault_code: disassemblePastRaceResult.getTruckTurfDirtFaultCode,
            truck_right_or_left: disassemblePastRaceResult.getTruckRightOrLeft,
            truck_inside_or_outside: disassemblePastRaceResult.getTruckInsideOrOutside,
            race_condition_riding_ground_condition: disassemblePastRaceResult.getRaceConditionRidingGroundCondition,
            race_condition_class: disassemblePastRaceResult.getRaceConditionClass,
            race_condition_requirement: disassemblePastRaceResult.getRaceConditionRequirement,
            race_condition_symbol: disassemblePastRaceResult.getRaceConditionSymbol,
            race_condition_weight: disassemblePastRaceResult.getRaceConditionWeight,
            race_condition_grade: disassemblePastRaceResult.getRaceConditionGrade,
            race_condition_race_name: disassemblePastRaceResult.getRaceConditionRaceName,
            race_condition_horse_count: disassemblePastRaceResult.getRaceConditionHorseCount,
            race_condition_race_name_short: disassemblePastRaceResult.getRaceConditionRaceNameShort,
            horse_race_performance_ranking: disassemblePastRaceResult.getHorseRacePerformanceRanking,
            horse_race_performance_abnormal_classification: disassemblePastRaceResult.getHorseRacePerformanceAbnormalClassification,
            horse_race_performance_time: disassemblePastRaceResult.getHorseRacePerformanceTime,
            horse_race_performance_basis_weight: disassemblePastRaceResult.getHorseRacePerformanceBasisWeight,
            horse_race_performance_jockey_name: disassemblePastRaceResult.getHorseRacePerformanceJockeyName,
            horse_race_performance_trainer_name: disassemblePastRaceResult.getHorseRacePerformanceTrainerName,
            horse_race_performance_confirm_win_odds: disassemblePastRaceResult.getHorseRacePerformanceConfirmWinOdds,
            horse_race_performance_confirm_win_popular_rank: disassemblePastRaceResult.getHorseRacePerformanceConfirmWinPopularRank,
            jrdb_idm: disassemblePastRaceResult.getJrdbIdm,
            jrdb_primary_point: disassemblePastRaceResult.getJrdbPrimaryPoint,
            jrdb_riding_ground_reference: disassemblePastRaceResult.getJrdbRidingGroundReference,
            jrdb_pace: disassemblePastRaceResult.getJrdbPace,
            jrdb_lagging: disassemblePastRaceResult.getJrdbLagging,
            jrdb_position_of_race: disassemblePastRaceResult.getJrdbPositionOfRace,
            jrdb_unfavorable: disassemblePastRaceResult.getJrdbUnfavorable,
            jrdb_unfavorable_before: disassemblePastRaceResult.getJrdbUnfavorableBefore,
            jrdb_unfavorable_middle: disassemblePastRaceResult.getJrdbUnfavorableMiddle,
            jrdb_unfavorable_after: disassemblePastRaceResult.getJrdbUnfavorableAfter,
            jrdb_race: disassemblePastRaceResult.getJrdbRace,
            jrdb_course_removal: disassemblePastRaceResult.getJrdbCourseRemoval,
            jrdb_rising_code: disassemblePastRaceResult.getJrdbRisingCode,
            jrdb_class_code: disassemblePastRaceResult.getJrdbClassCode,
            jrdb_horse_body_code: disassemblePastRaceResult.getJrdbHorseBodyCode,
            jrdb_sign_code: disassemblePastRaceResult.getJrdbSignCode,
            jrdb_race_pace: disassemblePastRaceResult.getJrdbRacePace,
            jrdb_horse_pace: disassemblePastRaceResult.getJrdbHorsePace,
            jrdb_ten_index: disassemblePastRaceResult.getJrdbTenIndex,
            jrdb_rising_index_code: disassemblePastRaceResult.getJrdbRisingIndexCode,
            jrdb_pace_index: disassemblePastRaceResult.getJrdbPaceIndex,
            jrdb_race_pace_index: disassemblePastRaceResult.getJrdbRacePaceIndex,
            jrdb_first_second_horse_name: disassemblePastRaceResult.getJrdbFirstSecondHorseName,
            jrdb_first_second_horse_time_reference: disassemblePastRaceResult.getJrdbFirstSecondHorseTimeReference,
            jrdb_before_3f_time: disassemblePastRaceResult.getJrdbBefore3fTime,
            jrdb_after_3f_time: disassemblePastRaceResult.getJrdbAfter3fTime,
            jrdb_remarks: disassemblePastRaceResult.getJrdbRemarks
        )
        pastRaceResult.save
      end
    end
  end
end
