namespace :insert_score_data do
  require_relative '../../app/helpers/score_data.rb'
  require_relative '../../app/models/score_data.rb'
  require_relative '../../app/models/application_record.rb'
  SCORE_DATA_TARGET_FILE = "db/resources/score_data/**/*"

  desc "score_data"
  task :score_data => :environment do
    targetFilesPath = Dir.glob SCORE_DATA_TARGET_FILE
    targetFilesPath.each do |filePath|
      score_datas = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_score_data = DisassembleScoreData.new(line)
          score_data = ScoreData.new(
              race_key_course_code: disassemble_score_data.getRaceKeyCourseCode,
              race_key_year: disassemble_score_data.getRaceKeyYear,
              race_key_times: disassemble_score_data.getRaceKeyTimes,
              race_key_day: disassemble_score_data.getRaceKeyDay,
              race_key_number_of_race: disassemble_score_data.getRaceKeyNumberOfRace,
              horse_numbers: disassemble_score_data.getHorseNumbers,
              pedigree_registration_number: disassemble_score_data.getPedigreeRegistrationNumber,
              date: disassemble_score_data.getDate,
              horse_name: disassemble_score_data.getHorseName,
              distance: disassemble_score_data.getDistance,
              turf_dart_fault_code: disassemble_score_data.getTurfDartFaultCode,
              right_and_left: disassemble_score_data.getRightAndLeft,
              inside_and_outside: disassemble_score_data.getInsideAndOutside,
              baba_state: disassemble_score_data.getBabaState,
              kind: disassemble_score_data.getKind,
              conditions: disassemble_score_data.getConditions,
              symbol: disassemble_score_data.getSymbol,
              weight: disassemble_score_data.getWeight,
              grade: disassemble_score_data.getGrade,
              race_name: disassemble_score_data.getRaceName,
              head_count: disassemble_score_data.getHeadCount,
              race_name_abbreviation: disassemble_score_data.getRaceNameAbbreviation,
              order_of_finish: disassemble_score_data.getOrderOfFinish,
              the_failure_division: disassemble_score_data.getTheFailureDivision,
              time: disassemble_score_data.getTime,
              basis_weight: disassemble_score_data.getBasisWeight,
              jockey_name: disassemble_score_data.getJockeyName,
              trainer_name: disassemble_score_data.getTrainerName,
              fixed_win_odds: disassemble_score_data.getFixedWinOdds,
              finalized_win_popularity_rank: disassemble_score_data.getFinalizedWinPopularityRank,
              idm: disassemble_score_data.getIdm,
              raw_score: disassemble_score_data.getRawScore,
              baba_difference: disassemble_score_data.getBabaDifference,
              pace: disassemble_score_data.getPace,
              late: disassemble_score_data.getLate,
              taken_position: disassemble_score_data.getTakenPosition,
              unfavorable: disassemble_score_data.getUnfavorable,
              disadvantage_before: disassemble_score_data.getDisadvantageBefore,
              medium_disadvantage: disassemble_score_data.getMediumDisadvantage,
              rear_disadvantage: disassemble_score_data.getRearDisadvantage,
              race: disassemble_score_data.getRace,
              course_up: disassemble_score_data.getCourseUp,
              the_degree_of_increase_code: disassemble_score_data.getTheDegreeOfIncreaseCode,
              class_code: disassemble_score_data.getClassCode,
              horse_body_code: disassemble_score_data.getHorseBodyCode,
              sign_code: disassemble_score_data.getSignCode,
              race_pace: disassemble_score_data.getRacePace,
              horse_pace: disassemble_score_data.getHorsePace,
              ten_index: disassemble_score_data.getTenIndex,
              increase_index: disassemble_score_data.getIncreaseIndex,
              pace_index: disassemble_score_data.getPaceIndex,
              race_p_index: disassemble_score_data.getRacePIndex,
              chakubamei_1_2: disassemble_score_data.getChakubamei12,
              wearing_time_difference_1_2: disassemble_score_data.getWearingTimeDifference12,
              before_3f_time: disassemble_score_data.getBefore3FTime,
              post_3f_time: disassemble_score_data.getPost3FTime,
              remarks: disassemble_score_data.getRemarks,
              reserve_jrdb: disassemble_score_data.getReserveJrdb,
              confirm_multiple_wins_odds_under: disassemble_score_data.getConfirmMultipleWinsOddsUnder,
              ten_at_win_odds: disassemble_score_data.getTenAtWinOdds,
              ten_at_fukusho_odds: disassemble_score_data.getTenAtFukushoOdds,
              corner_rank_1: disassemble_score_data.getCornerRank1,
              corner_rank_2: disassemble_score_data.getCornerRank2,
              corner_rank_3: disassemble_score_data.getCornerRank3,
              corner_rank_4: disassemble_score_data.getCornerRank4,
              before_3f_top_difference: disassemble_score_data.getBefore3FTopDifference,
              rear_3f_top_difference: disassemble_score_data.getRear3FTopDifference,
              jockey_code: disassemble_score_data.getJockeyCode,
              trainer_code: disassemble_score_data.getTrainerCode,
              horse_body_weight: disassemble_score_data.getHorseBodyWeight,
              horse_body_weight_increase_or_decrease: disassemble_score_data.getHorseBodyWeightIncreaseOrDecrease,
              weather_code: disassemble_score_data.getWeatherCode,
              course: disassemble_score_data.getCourse,
              race_leg_quality: disassemble_score_data.getRaceLegQuality,
              win: disassemble_score_data.getWin,
              multiple_wins: disassemble_score_data.getMultipleWins,
              this_prize: disassemble_score_data.getThisPrize,
              shutoku_prize: disassemble_score_data.getShutokuPrize,
              race_pace_flow: disassemble_score_data.getRacePaceFlow,
              horse_pace_flow: disassemble_score_data.getHorsePaceFlow,
              four_corners_course_up: disassemble_score_data.getFourCornersCourseUp,
              reserve: disassemble_score_data.getReserve,
              new_line: disassemble_score_data.getNewLine,
          )
          score_datas << score_data
        end
      end
      ScoreData.import score_datas
    end
  end
end
