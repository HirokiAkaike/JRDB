namespace :insert_registered_horse do
  require_relative '../../app/helpers/disassemble_registered_horse.rb'
  require_relative '../../app/models/registered_horse.rb'
  require_relative '../../app/models/application_record.rb'
  TARGET_FILE = "db/resources/registered_horse/**/*"

  desc "registered_horse"
  task :registered_horse => :environment do
    targetFilesPath = Dir.glob TARGET_FILE
    targetFilesPath.each do |filePath|
      registeredHorses = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassembleRegisteredHorse = DisassembleRegisteredHorse.new(line)
          registeredHorse = RegisteredHorse.new(
              race_key_course_code: disassembleRegisteredHorse.getRaceCourseCode,
              race_key_year: disassembleRegisteredHorse.getYearCode,
              race_key_times: disassembleRegisteredHorse.getTimesCode,
              race_key_day: disassembleRegisteredHorse.getDayCode,
              race_key_number_of_race: disassembleRegisteredHorse.getNumberOfRace,
              horse_name_code: disassembleRegisteredHorse.getHorseNameCodePosition,
              horse_pedigree_registration_code: disassembleRegisteredHorse.getHorsePedigreeRegistrationCodePosition,
              horse_name: disassembleRegisteredHorse.getHorseNamePosition,
              horse_gender_code: disassembleRegisteredHorse.getHorseGenderCodePosition,
              horse_symbol_code: disassembleRegisteredHorse.getHorseSymbolCodePosition,
              blinker_code: disassembleRegisteredHorse.getBlinkerCodePosition,
              jockey_name: disassembleRegisteredHorse.getJocKeyNamePosition,
              burden_weight: disassembleRegisteredHorse.getBurdenWeightPosition,
              apprentice_class: disassembleRegisteredHorse.getApprenticeClassPosition,
              trainer_name: disassembleRegisteredHorse.getTrainerNamePosition,
              trainer_belong: disassembleRegisteredHorse.getTrainerBelongPosition,
              idm: disassembleRegisteredHorse.getIdmPositionPosition,
              rising_degree: disassembleRegisteredHorse.getRisingDegreePosition,
              rotation: disassembleRegisteredHorse.getRotationPosition,
              leg_quality: disassembleRegisteredHorse.getLegQualityPosition,
              distance_aptitude: disassembleRegisteredHorse.getDistanceAptitudePosition,
              distance_aptitude_second: disassembleRegisteredHorse.getDistanceAptitudeSecondPosition,
              turf_aptitude_code: disassembleRegisteredHorse.getTurfAptitudeCodePosition,
              dart_aptitude_code: disassembleRegisteredHorse.getDartAptitudeCodePosition,
              heaviness_aptitude_code: disassembleRegisteredHorse.getHeavinessAptitudeCodePosition,
              hoof_code: disassembleRegisteredHorse.getHoofCodePosition,
              class_code: disassembleRegisteredHorse.getClassCodePosition,
              coat_color_code: disassembleRegisteredHorse.getCoatColorCodePosition,
              other_data_link_key_prebious_run_1_race_score_key: disassembleRegisteredHorse.getOtherDataLinkKeyprebiousRun_1_RaceScoreKeyPosition,
              other_data_link_key_prebious_run_2_race_score_key: disassembleRegisteredHorse.getOtherDataLinkKeyprebiousRun_2_RaceScoreKeyPosition,
              other_data_link_key_prebious_run_3_race_score_key: disassembleRegisteredHorse.getOtherDataLinkKeyprebiousRun_3_RaceScoreKeyPosition,
              other_data_link_key_prebious_run_4_race_score_key: disassembleRegisteredHorse.getOtherDataLinkKeyprebiousRun_4_RaceScoreKeyPosition,
              other_data_link_key_prebious_run_5_race_score_key: disassembleRegisteredHorse.getOtherDataLinkKeyprebiousRun_5_RaceScoreKeyPosition,
              other_data_link_key_prebious_run_1_race_key: disassembleRegisteredHorse.getOtherDataLinkKeyprebiousRun_1_RaceKeyPosition,
              other_data_link_key_prebious_run_2_race_key: disassembleRegisteredHorse.getOtherDataLinkKeyprebiousRun_2_RaceKeyPosition,
              other_data_link_key_prebious_run_3_race_key: disassembleRegisteredHorse.getOtherDataLinkKeyprebiousRun_3_RaceKeyPosition,
              other_data_link_key_prebious_run_4_race_key: disassembleRegisteredHorse.getOtherDataLinkKeyprebiousRun_4_RaceKeyPosition,
              other_data_link_key_prebious_run_5_race_key: disassembleRegisteredHorse.getOtherDataLinkKeyprebiousRun_5_RaceKeyPosition,
              jockey_code: disassembleRegisteredHorse.getJocKeyCodePosition,
              trainer_code: disassembleRegisteredHorse.getTrainerCodePosition,
              winning_prize: disassembleRegisteredHorse.getWinningPrizePosition,
              income_prize: disassembleRegisteredHorse.getIncomePrizePosition,
              condition_class: disassembleRegisteredHorse.getConditionClassPosition,
              exercise: disassembleRegisteredHorse.getExercisePosition,
              body_type: disassembleRegisteredHorse.getBodyTypePosition,
              body_type_total_1: disassembleRegisteredHorse.getBodyTypeTotal_1_Position,
              body_type_total_2: disassembleRegisteredHorse.getBodyTypeTotal_2_Position,
              body_type_total_3: disassembleRegisteredHorse.getBodyTypeTotal_3_Position,
              horse_special_mention_1: disassembleRegisteredHorse.getHorseSpecialMention_1_Position,
              horse_special_mention_2: disassembleRegisteredHorse.getHorseSpecialMention_2_Position,
              horse_special_mention_3: disassembleRegisteredHorse.getHorseSpecialMention_3_Position,
              expansion_forecast_data_ten_index: disassembleRegisteredHorse.getExpansionForecastDataTenindexPosition,
              expansion_forecast_data_pace_index: disassembleRegisteredHorse.getExpansionForecastDataPaceindexPosition,
              expansion_forecast_data_ricing_index: disassembleRegisteredHorse.getExpansionForecastDataRicingindexPosition,
              expansion_forecast_data_position_index: disassembleRegisteredHorse.getExpansionForecastDataPositionindexPosition,
              horse_start_index: disassembleRegisteredHorse.getHorseStartIndexPosition,
              horse_lagging_rate: disassembleRegisteredHorse.getHorseLaggingRatePosition,
              running_before_reference: disassembleRegisteredHorse.getRunningBeforeReferencePosition,
              reference_riding_horse_code: disassembleRegisteredHorse.getReferenceRidingHorseCodePosition,
              data_partition: disassembleRegisteredHorse.getDataPartitionPosition,
              leading_rank: disassembleRegisteredHorse.getLeadingRankPosition,
              reserve: disassembleRegisteredHorse.getReservePosition
          )
          registeredHorses << registeredHorse
        end
      end
      p registeredHorses
      RegisteredHorse.import registeredHorses
    end
  end
end
