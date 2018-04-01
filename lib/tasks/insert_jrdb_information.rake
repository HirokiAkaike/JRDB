namespace :insert_jrdb_information do
  require_relative '../../app/helpers/disassemble_jrdb_information.rb'
  require_relative '../../app/models/jrdb_information.rb'
  require_relative '../../app/models/application_record.rb'
  JRDB_INFORMATION_TARGET_FILE = "db/resources/jrdb_information/**/*"

  desc "jrdb_information"
  task :jrdb_information => :environment do
    targetFilesPath = Dir.glob JRDB_INFORMATION_TARGET_FILE
    targetFilesPath.each do |filePath|
      jrdb_informations = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_jrdb_information = DisassembleJrdbInformation.new(line)
          jrdb_information = JrdbInformation.new(
              race_key_course_code: disassemble_jrdb_information.getRaceKeyCourseCode,
              race_key_year: disassemble_jrdb_information.getRaceKeyYear,
              race_key_times: disassemble_jrdb_information.getRaceKeyTimes,
              race_key_day: disassemble_jrdb_information.getRaceKeyDay,
              race_key_number_of_race: disassemble_jrdb_information.getRaceKeyNumberOfRace,
              race_horse_number: disassemble_jrdb_information.getRaceHorseNumber,
              pedigree_register_code: disassemble_jrdb_information.getPedigreeRegisterCode,
              horse_name: disassemble_jrdb_information.getHorseName,
              standard_odds: disassemble_jrdb_information.getStandardOdds,
              standard_show_odds: disassemble_jrdb_information.getStandardShowOdds,
              cid_training_point: disassemble_jrdb_information.getCidTrainingPoint,
              cid_racing_stable_point: disassemble_jrdb_information.getCidRacingStablePoint,
              cid_point: disassemble_jrdb_information.getCidPoint,
              cid: disassemble_jrdb_information.getCid,
              ls_index: disassemble_jrdb_information.getLsIndex,
              ls_evaluation: disassemble_jrdb_information.getLsEvaluation,
              em: disassemble_jrdb_information.getEm,
              racing_stable_bb_mark: disassemble_jrdb_information.getRacingStableBbMark,
              racing_stable_bb_win_recovery_rate: disassemble_jrdb_information.getRacingStableBbWinRecoveryRate,
              racing_stable_bb_quinella_rate: disassemble_jrdb_information.getRacingStableBbQuinellaRate,
              jockey_bb_mark: disassemble_jrdb_information.getJockeyBbMark,
              jockey_bb_win_recovery_rate: disassemble_jrdb_information.getJockeyBbWinRecoveryRate,
              jockey_bb_quinella_rate: disassemble_jrdb_information.getJockeyBbQuinellaRate
          )
          jrdb_informations << jrdb_information
        end
      end
      TvProgram.import jrdb_informations
    end
  end
end
