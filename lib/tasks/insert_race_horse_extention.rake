namespace :insert_race_horse_extention_extention do
  require_relative '../../app/helpers/disassemble_race_horse_extention.rb'
  require_relative '../../app/models/race_horse_extention.rb'
  require_relative '../../app/models/application_record.rb'
  RACE_HORSE_EXTENTION_TARGET_FILE = "db/resources/race_horse_extention/**/*"

  desc "race_horse_extention"
  task :race_horse_extention => :environment do
    targetFilesPath = Dir.glob RACE_HORSE_EXTENTION_TARGET_FILE
    targetFilesPath.each do |filePath|
      race_horse_extentions = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassembleRaceHorseExtention = DisassembleRaceHorseExtention.new(line)
          race_horse_extention = RaceHorseExtention.new(
              race_key_course_code: disassembleRaceHorseExtention.getRaceKeyCourseCode,
              race_key_year: disassembleRaceHorseExtention.getRaceKeyYear,
              race_key_times: disassembleRaceHorseExtention.getRaceKeyTimes,
              race_key_day: disassembleRaceHorseExtention.getRaceKeyDay,
              race_key_number_of_race: disassembleRaceHorseExtention.getRaceKeyNumberOfRace,
              race_horse_number: disassembleRaceHorseExtention.getRaceHorseNumber,
              jra_achievement_1: disassembleRaceHorseExtention.getJraAchievement1,
              jra_achievement_2: disassembleRaceHorseExtention.getJraAchievement2,
              jra_achievement_3: disassembleRaceHorseExtention.getJraAchievement3,
              jra_achievement_4: disassembleRaceHorseExtention.getJraAchievement4,
              interaction_achievement_1: disassembleRaceHorseExtention.getInteractionAchievement1,
              interaction_achievement_2: disassembleRaceHorseExtention.getInteractionAchievement2,
              interaction_achievement_3: disassembleRaceHorseExtention.getInteractionAchievement3,
              interaction_achievement_4: disassembleRaceHorseExtention.getInteractionAchievement4,
              other_achievement_1: disassembleRaceHorseExtention.getOtherAchievement1,
              other_achievement_2: disassembleRaceHorseExtention.getOtherAchievement2,
              other_achievement_3: disassembleRaceHorseExtention.getOtherAchievement3,
              other_achievement_4: disassembleRaceHorseExtention.getOtherAchievement4,
              turf_dirt_fault_achievement_1: disassembleRaceHorseExtention.getTurfDirtFaultAchievement1,
              turf_dirt_fault_achievement_2: disassembleRaceHorseExtention.getTurfDirtFaultAchievement2,
              turf_dirt_fault_achievement_3: disassembleRaceHorseExtention.getTurfDirtFaultAchievement3,
              turf_dirt_fault_achievement_4: disassembleRaceHorseExtention.getTurfDirtFaultAchievement4,
              turf_dirt_fault_distance_achievement_1: disassembleRaceHorseExtention.getTurfDirtFaultDistanceAchievement1,
              turf_dirt_fault_distance_achievement_2: disassembleRaceHorseExtention.getTurfDirtFaultDistanceAchievement2,
              turf_dirt_fault_distance_achievement_3: disassembleRaceHorseExtention.getTurfDirtFaultDistanceAchievement3,
              turf_dirt_fault_distance_achievement_4: disassembleRaceHorseExtention.getTurfDirtFaultDistanceAchievement4,
              truck_distance_achievement_1: disassembleRaceHorseExtention.getTruckDistanceAchievement1,
              truck_distance_achievement_2: disassembleRaceHorseExtention.getTruckDistanceAchievement2,
              truck_distance_achievement_3: disassembleRaceHorseExtention.getTruckDistanceAchievement3,
              truck_distance_achievement_4: disassembleRaceHorseExtention.getTruckDistanceAchievement4,
              rotation_achievement_1: disassembleRaceHorseExtention.getRotationAchievement1,
              rotation_achievement_2: disassembleRaceHorseExtention.getRotationAchievement2,
              rotation_achievement_3: disassembleRaceHorseExtention.getRotationAchievement3,
              rotation_achievement_4: disassembleRaceHorseExtention.getRotationAchievement4,
              circle_achievement_1: disassembleRaceHorseExtention.getCircleAchievement1,
              circle_achievement_2: disassembleRaceHorseExtention.getCircleAchievement2,
              circle_achievement_3: disassembleRaceHorseExtention.getCircleAchievement3,
              circle_achievement_4: disassembleRaceHorseExtention.getCircleAchievement4,
              jockey_achievement_1: disassembleRaceHorseExtention.getJockeyAchievement1,
              jockey_achievement_2: disassembleRaceHorseExtention.getJockeyAchievement2,
              jockey_achievement_3: disassembleRaceHorseExtention.getJockeyAchievement3,
              jockey_achievement_4: disassembleRaceHorseExtention.getJockeyAchievement4,
              good_field_achievement_1: disassembleRaceHorseExtention.getGoodFieldAchievement1,
              good_field_achievement_2: disassembleRaceHorseExtention.getGoodFieldAchievement2,
              good_field_achievement_3: disassembleRaceHorseExtention.getGoodFieldAchievement3,
              good_field_achievement_4: disassembleRaceHorseExtention.getGoodFieldAchievement4,
              bad_field_achievement_1: disassembleRaceHorseExtention.getBadFieldAchievement1,
              bad_field_achievement_2: disassembleRaceHorseExtention.getBadFieldAchievement2,
              bad_field_achievement_3: disassembleRaceHorseExtention.getBadFieldAchievement3,
              bad_field_achievement_4: disassembleRaceHorseExtention.getBadFieldAchievement4,
              fail_field_achievement_1: disassembleRaceHorseExtention.getFailFieldAchievement1,
              fail_field_achievement_2: disassembleRaceHorseExtention.getFailFieldAchievement2,
              fail_field_achievement_3: disassembleRaceHorseExtention.getFailFieldAchievement3,
              fail_field_achievement_4: disassembleRaceHorseExtention.getFailFieldAchievement4,
              s_pace_achievement_1: disassembleRaceHorseExtention.getSPaceAchievement1,
              s_pace_achievement_2: disassembleRaceHorseExtention.getSPaceAchievement2,
              s_pace_achievement_3: disassembleRaceHorseExtention.getSPaceAchievement3,
              s_pace_achievement_4: disassembleRaceHorseExtention.getSPaceAchievement4,
              m_pace_achievement_1: disassembleRaceHorseExtention.getMPaceAchievement1,
              m_pace_achievement_2: disassembleRaceHorseExtention.getMPaceAchievement2,
              m_pace_achievement_3: disassembleRaceHorseExtention.getMPaceAchievement3,
              m_pace_achievement_4: disassembleRaceHorseExtention.getMPaceAchievement4,
              h_pace_achievement_1: disassembleRaceHorseExtention.getHPaceAchievement1,
              h_pace_achievement_2: disassembleRaceHorseExtention.getHPaceAchievement2,
              h_pace_achievement_3: disassembleRaceHorseExtention.getHPaceAchievement3,
              h_pace_achievement_4: disassembleRaceHorseExtention.getHPaceAchievement4,
              season_achievement_1: disassembleRaceHorseExtention.getSeasonAchievement1,
              season_achievement_2: disassembleRaceHorseExtention.getSeasonAchievement2,
              season_achievement_3: disassembleRaceHorseExtention.getSeasonAchievement3,
              season_achievement_4: disassembleRaceHorseExtention.getSeasonAchievement4,
              bracket_achievement_1: disassembleRaceHorseExtention.getBracketAchievement1,
              bracket_achievement_2: disassembleRaceHorseExtention.getBracketAchievement2,
              bracket_achievement_3: disassembleRaceHorseExtention.getBracketAchievement3,
              bracket_achievement_4: disassembleRaceHorseExtention.getBracketAchievement4,
              jockey_distance_achievement_1: disassembleRaceHorseExtention.getJockeyDistanceAchievement1,
              jockey_distance_achievement_2: disassembleRaceHorseExtention.getJockeyDistanceAchievement2,
              jockey_distance_achievement_3: disassembleRaceHorseExtention.getJockeyDistanceAchievement3,
              jockey_distance_achievement_4: disassembleRaceHorseExtention.getJockeyDistanceAchievement4,
              jockey_distance_truck_achievement_one_1: disassembleRaceHorseExtention.getJockeyDistanceTruckAchievementOne1,
              jockey_distance_truck_achievement_one_2: disassembleRaceHorseExtention.getJockeyDistanceTruckAchievementOne2,
              jockey_distance_truck_achievement_one_3: disassembleRaceHorseExtention.getJockeyDistanceTruckAchievementOne3,
              jockey_distance_truck_achievement_one_4: disassembleRaceHorseExtention.getJockeyDistanceTruckAchievementOne4,
              jockey_trainer_achievement_1: disassembleRaceHorseExtention.getJockeyTrainerAchievement1,
              jockey_trainer_achievement_2: disassembleRaceHorseExtention.getJockeyTrainerAchievement2,
              jockey_trainer_achievement_3: disassembleRaceHorseExtention.getJockeyTrainerAchievement3,
              jockey_trainer_achievement_4: disassembleRaceHorseExtention.getJockeyTrainerAchievement4,
              jockey_owner_achievement_1: disassembleRaceHorseExtention.getJockeyOwnerAchievement1,
              jockey_owner_achievement_2: disassembleRaceHorseExtention.getJockeyOwnerAchievement2,
              jockey_owner_achievement_3: disassembleRaceHorseExtention.getJockeyOwnerAchievement3,
              jockey_owner_achievement_4: disassembleRaceHorseExtention.getJockeyOwnerAchievement4,
              jockey_blinker_achievement_1: disassembleRaceHorseExtention.getJockeyBlinkerAchievement1,
              jockey_blinker_achievement_2: disassembleRaceHorseExtention.getJockeyBlinkerAchievement2,
              jockey_blinker_achievement_3: disassembleRaceHorseExtention.getJockeyBlinkerAchievement3,
              jockey_blinker_achievement_4: disassembleRaceHorseExtention.getJockeyBlinkerAchievement4,
              trainer_owner_achievement_1: disassembleRaceHorseExtention.getTrainerOwnerAchievement1,
              trainer_owner_achievement_2: disassembleRaceHorseExtention.getTrainerOwnerAchievement2,
              trainer_owner_achievement_3: disassembleRaceHorseExtention.getTrainerOwnerAchievement3,
              trainer_owner_achievement_4: disassembleRaceHorseExtention.getTrainerOwnerAchievement4,
              turf_father_lineage_quinella_rate: disassembleRaceHorseExtention.getTurfFatherLineageQuinellaRate,
              dirt_father_lineage_quinella_rate: disassembleRaceHorseExtention.getDirtFatherLineageQuinellaRate,
              father_lineage_quinella_rate_distance_avg: disassembleRaceHorseExtention.getFatherLineageQuinellaRateDistanceAvg,
              turf_maternal_father_lineage_quinella_rate: disassembleRaceHorseExtention.getTurfMaternalFatherLineageQuinellaRate,
              dirt_maternal_father_lineage_quinella_rate: disassembleRaceHorseExtention.getDirtMaternalFatherLineageQuinellaRate,
              maternal_father_lineage_quinella_rate_distance_avg: disassembleRaceHorseExtention.getMaternalFatherLineageQuinellaRateDistanceAvg
          )
          race_horse_extentions << disassembleRaceHorseExtention
        end
      end
      RaceHorseExtention.import race_horse_extentions
    end
  end
end
