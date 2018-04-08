namespace :insert_registered_horse_data do
  require_relative '../../app/helpers/registered_horse_data.rb'
  require_relative '../../app/models/registered_horse_data.rb'
  require_relative '../../app/models/application_record.rb'
  REGISTERED_HORSE_DATA_TARGET_FILE = "db/resources/registered_horse_data/**/*"

  desc "registered_horse_data"
  task :registered_horse_data => :environment do
    targetFilesPath = Dir.glob REGISTERED_HORSE_DATA_TARGET_FILE
    targetFilesPath.each do |filePath|
      registered_horse_datas = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_registered_horse_data = DisassembleRegisteredHorseData.new(line)
          registered_horse_data = RegisteredHorseData.new(
              race_key_course_code: disassemble_registered_horse_data.getRaceKeyCourseCode,
              race_key_year: disassemble_registered_horse_data.getRaceKeyYear,
              race_key_times: disassemble_registered_horse_data.getRaceKeyTimes,
              race_key_day: disassemble_registered_horse_data.getRaceKeyDay,
              race_key_number_of_race: disassemble_registered_horse_data.getRaceKeyNumberOfRace,
              pedigree_registration_number: disassemble_registered_horse_data.getPedigreeRegistrationNumber,
              date: disassemble_registered_horse_data.getDate,
              special_code_1: disassemble_registered_horse_data.getSpecialCode1,
              special_code_2: disassemble_registered_horse_data.getSpecialCode2,
              special_code_3: disassemble_registered_horse_data.getSpecialCode3,
              special_code_4: disassemble_registered_horse_data.getSpecialCode4,
              special_code_5: disassemble_registered_horse_data.getSpecialCode5,
              special_code_6: disassemble_registered_horse_data.getSpecialCode6,
              harness_code_1: disassemble_registered_horse_data.getHarnessCode1,
              harness_code_2: disassemble_registered_horse_data.getHarnessCode2,
              harness_code_3: disassemble_registered_horse_data.getHarnessCode3,
              harness_code_4: disassemble_registered_horse_data.getHarnessCode4,
              harness_code_5: disassemble_registered_horse_data.getHarnessCode5,
              harness_code_6: disassemble_registered_horse_data.getHarnessCode6,
              harness_code_7: disassemble_registered_horse_data.getHarnessCode7,
              harness_code_8: disassemble_registered_horse_data.getHarnessCode8,
              overall_1: disassemble_registered_horse_data.getOverall1,
              overall_2: disassemble_registered_horse_data.getOverall2,
              overall_3: disassemble_registered_horse_data.getOverall3,
              left_front_1: disassemble_registered_horse_data.getLeftFront1,
              left_front_2: disassemble_registered_horse_data.getLeftFront2,
              left_front_3: disassemble_registered_horse_data.getLeftFront3,
              right_front_1: disassemble_registered_horse_data.getRightFront1,
              right_front_2: disassemble_registered_horse_data.getRightFront2,
              right_front_3: disassemble_registered_horse_data.getRightFront3,
              left_after_1: disassemble_registered_horse_data.getLeftAfter1,
              left_after_2: disassemble_registered_horse_data.getLeftAfter2,
              left_after_3: disassemble_registered_horse_data.getLeftAfter3,
              right_after_1: disassemble_registered_horse_data.getRightAfter1,
              right_after_2: disassemble_registered_horse_data.getRightAfter2,
              right_after_3: disassemble_registered_horse_data.getRightAfter3,
              paddock_comments: disassemble_registered_horse_data.getPaddockComments,
              ashimoto_comment: disassemble_registered_horse_data.getAshimotoComment,
              harness_other_comments: disassemble_registered_horse_data.getHarnessOtherComments,
              race_comments: disassemble_registered_horse_data.getRaceComments,
              hami: disassemble_registered_horse_data.getHami,
              vantage: disassemble_registered_horse_data.getVantage,
              horseshoes: disassemble_registered_horse_data.getHorseshoes,
              hoof_state: disassemble_registered_horse_data.getHoofState,
              zoe: disassemble_registered_horse_data.getZoe,
              honekobu: disassemble_registered_horse_data.getHonekobu,
              reserve: disassemble_registered_horse_data.getReserve,
              new_line: disassemble_registered_horse_data.getNewLine,
          )
          registered_horse_datas << registered_horse_data
        end
      end
      RegisteredHorseData.import registered_horse_datas
    end
  end
end
