namespace :insert_before_racing_extension do
  require_relative '../../app/helpers/disassemble_before_racing_extension.rb'
  require_relative '../../app/models/before_racing_extension.rb'
  require_relative '../../app/models/application_record.rb'
  BEFORE_RACING_EXTENSION_TARGET_FILE = "db/resources/before_racing_extension/**/*"

  desc "before_racing_extension"
  task :before_racing_extension => :environment do
    targetFilesPath = Dir.glob BEFORE_RACING_EXTENSION_TARGET_FILE
    targetFilesPath.each do |filePath|
      before_racing_extensions = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_before_racing_extension = DisassembleBeforeRacingExtension.new(line)
          before_racing_extension = BeforeRacingExtension.new(
              race_key_course_code: disassemble_before_racing_extension.getRaceKeyCourseCode,
              race_key_year: disassemble_before_racing_extension.getRaceKeyYear,
              race_key_times: disassemble_before_racing_extension.getRaceKeyTimes,
              race_key_day: disassemble_before_racing_extension.getRaceKeyDay,
              race_key_number_of_race: disassemble_before_racing_extension.getRaceKeyNumberOfRace,
              race_key_horse_number: disassemble_before_racing_extension.getRaceKeyHorseNumber,
              race_performance_pedigree_register_code: disassemble_before_racing_extension.getRacePerformancePedigreeRegisterCode,
              race_performance_date_ymd: disassemble_before_racing_extension.getRacePerformanceDateYmd,
              special_mention1: disassemble_before_racing_extension.getSpecialMention1,
              special_mention2: disassemble_before_racing_extension.getSpecialMention2,
              special_mention3: disassemble_before_racing_extension.getSpecialMention3,
              special_mention4: disassemble_before_racing_extension.getSpecialMention4,
              special_mention5: disassemble_before_racing_extension.getSpecialMention5,
              special_mention6: disassemble_before_racing_extension.getSpecialMention6,
              harness_code1: disassemble_before_racing_extension.getHarnessCode1,
              harness_code2: disassemble_before_racing_extension.getHarnessCode2,
              harness_code3: disassemble_before_racing_extension.getHarnessCode3,
              harness_code4: disassemble_before_racing_extension.getHarnessCode4,
              harness_code5: disassemble_before_racing_extension.getHarnessCode5,
              harness_code6: disassemble_before_racing_extension.getHarnessCode6,
              harness_code7: disassemble_before_racing_extension.getHarnessCode7,
              harness_code8: disassemble_before_racing_extension.getHarnessCode8,
              Leg_code_general_1: disassemble_before_racing_extension.getLegCodeGeneral1,
              Leg_code_general_2: disassemble_before_racing_extension.getLegCodeGeneral2,
              Leg_code_general_3: disassemble_before_racing_extension.getLegCodeGeneral3,
              Leg_code_left_front_1: disassemble_before_racing_extension.getLegCodeLeftFront1,
              Leg_code_left_front_2: disassemble_before_racing_extension.getLegCodeLeftFront2,
              Leg_code_left_front_3: disassemble_before_racing_extension.getLegCodeLeftFront3,
              Leg_code_right_front_1: disassemble_before_racing_extension.getLegCodeRightFront1,
              Leg_code_right_front_2: disassemble_before_racing_extension.getLegCodeRightFront2,
              Leg_code_right_front_3: disassemble_before_racing_extension.getLegCodeRightFront3,
              Leg_code_left_back_1: disassemble_before_racing_extension.getLegCodeLeftBack1,
              Leg_code_left_back_2: disassemble_before_racing_extension.getLegCodeLeftBack2,
              Leg_code_left_back_3: disassemble_before_racing_extension.getLegCodeLeftBack3,
              Leg_code_right_back_1: disassemble_before_racing_extension.getLegCodeRightBack1,
              Leg_code_right_back_2: disassemble_before_racing_extension.getLegCodeRightBack2,
              Leg_code_right_back_3: disassemble_before_racing_extension.getLegCodeRightBack3,
              paddock_comment: disassemble_before_racing_extension.getPaddockComment,
              Leg_comment: disassemble_before_racing_extension.getLegComment,
              harness_other_comment: disassemble_before_racing_extension.getHarnessOtherComment,
              race_comment: disassemble_before_racing_extension.getRaceComment,
              data_analysis_hami: disassemble_before_racing_extension.getDataAnalysisHami,
              data_analysis_bandage: disassemble_before_racing_extension.getDataAnalysisBandage,
              data_analysis_horseshoe: disassemble_before_racing_extension.getDataAnalysisHorseshoe,
              data_analysis_hoof_state: disassemble_before_racing_extension.getDataAnalysisHoofState,
              data_analysis_soe: disassemble_before_racing_extension.getDataAnalysisSoe,
              data_analysis_osselet: disassemble_before_racing_extension.getDataAnalysisOsselet
          )
          before_racing_extensions << before_racing_extension
        end
      end
      BeforeRacingExtension.import before_racing_extensions
    end
  end
end
