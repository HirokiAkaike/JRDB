namespace :insert_score_extension_data do
  require_relative '../../app/helpers/score_extension_data.rb'
  require_relative '../../app/models/score_extension_data.rb'
  require_relative '../../app/models/application_record.rb'
  SCORE_EXTENSION_DATA_TARGET_FILE = "db/resources/score_extension_data/**/*"

  desc "score_extension_data"
  task :score_extension_data => :environment do
    targetFilesPath = Dir.glob SCORE_EXTENSION_DATA_TARGET_FILE
    targetFilesPath.each do |filePath|
      score_extension_datas = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_extension_data = DisassembleScoreExtensionData.new(line)
          score_extension_data = ScoreExtensionData.new(
              race_key_course_code: disassemble_score_extension_data.getRaceKeyCourseCode,
              race_key_year: disassemble_score_extension_data.getRaceKeyYear,
              race_key_times: disassemble_score_extension_data.getRaceKeyTimes,
              race_key_day: disassemble_score_extension_data.getRaceKeyDay,
              race_key_number_of_race: disassemble_score_extension_data.getRaceKeyNumberOfRace,
              pedigree_registration_number: disassemble_score_extension_data.getPedigreeRegistrationNumber,
              date: disassemble_score_extension_data.getDate,
              special_code_1: disassemble_score_extension_data.getSpecialCode1,
              special_code_2: disassemble_score_extension_data.getSpecialCode2,
              special_code_3: disassemble_score_extension_data.getSpecialCode3,
              special_code_4: disassemble_score_extension_data.getSpecialCode4,
              special_code_5: disassemble_score_extension_data.getSpecialCode5,
              special_code_6: disassemble_score_extension_data.getSpecialCode6,
              harness_code_1: disassemble_score_extension_data.getHarnessCode1,
              harness_code_2: disassemble_score_extension_data.getHarnessCode2,
              harness_code_3: disassemble_score_extension_data.getHarnessCode3,
              harness_code_4: disassemble_score_extension_data.getHarnessCode4,
              harness_code_5: disassemble_score_extension_data.getHarnessCode5,
              harness_code_6: disassemble_score_extension_data.getHarnessCode6,
              harness_code_7: disassemble_score_extension_data.getHarnessCode7,
              harness_code_8: disassemble_score_extension_data.getHarnessCode8,
              overall_1: disassemble_score_extension_data.getOverall1,
              overall_2: disassemble_score_extension_data.getOverall2,
              overall_3: disassemble_score_extension_data.getOverall3,
              left_front_1: disassemble_score_extension_data.getLeftFront1,
              left_front_2: disassemble_score_extension_data.getLeftFront2,
              left_front_3: disassemble_score_extension_data.getLeftFront3,
              right_front_1: disassemble_score_extension_data.getRightFront1,
              right_front_2: disassemble_score_extension_data.getRightFront2,
              right_front_3: disassemble_score_extension_data.getRightFront3,
              left_after_1: disassemble_score_extension_data.getLeftAfter1,
              left_after_2: disassemble_score_extension_data.getLeftAfter2,
              left_after_3: disassemble_score_extension_data.getLeftAfter3,
              right_after_1: disassemble_score_extension_data.getRightAfter1,
              right_after_2: disassemble_score_extension_data.getRightAfter2,
              right_after_3: disassemble_score_extension_data.getRightAfter3,
              paddock_comments: disassemble_score_extension_data.getPaddockComments,
              ashimoto_comment: disassemble_score_extension_data.getAshimotoComment,
              harness_other_comments: disassemble_score_extension_data.getHarnessOtherComments,
              race_comments: disassemble_score_extension_data.getRaceComments,
              hami: disassemble_score_extension_data.getHami,
              vantage: disassemble_score_extension_data.getVantage,
              horseshoes: disassemble_score_extension_data.getHorseshoes,
              hoof_state: disassemble_score_extension_data.getHoofState,
              zoe: disassemble_score_extension_data.getZoe,
              honekobu: disassemble_score_extension_data.getHonekobu,
              reserve: disassemble_score_extension_data.getReserve,
              new_line: disassemble_score_extension_data.getNewLine,
          )
          score_extension_datas << score_extension_data
        end
      end
      ScoreExtensionData.import score_extension_datas
    end
  end
end
