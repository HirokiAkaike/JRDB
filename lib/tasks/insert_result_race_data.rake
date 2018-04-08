namespace :insert_result_race_data do
  require_relative '../../app/helpers/result_race_data.rb'
  require_relative '../../app/models/result_race_data.rb'
  require_relative '../../app/models/application_record.rb'
  RESULT_RACE_DATA_TARGET_FILE = "db/resources/result_race_data/**/*"

  desc "result_race_data"
  task :result_race_data => :environment do
    targetFilesPath = Dir.glob RESULT_RACE_DATA_TARGET_FILE
    targetFilesPath.each do |filePath|
      result_race_datas = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          result_race_data = DisassembleResultRaceData.new(line)
          result_race_data = ResultRaceData.new(
              race_key_course_code: disassemble_result_race_data.getRaceKeyCourseCode,
              race_key_year: disassemble_result_race_data.getRaceKeyYear,
              race_key_times: disassemble_result_race_data.getRaceKeyTimes,
              race_key_day: disassemble_result_race_data.getRaceKeyDay,
              race_key_number_of_race: disassemble_result_race_data.getRaceKeyNumberOfRace,
              halong_time_1: disassemble_result_race_data.getHalongTime1,
              halong_time_2: disassemble_result_race_data.getHalongTime2,
              halong_time_3: disassemble_result_race_data.getHalongTime3,
              halong_time_4: disassemble_result_race_data.getHalongTime4,
              halong_time_5: disassemble_result_race_data.getHalongTime5,
              halong_time_6: disassemble_result_race_data.getHalongTime6,
              halong_time_7: disassemble_result_race_data.getHalongTime7,
              halong_time_8: disassemble_result_race_data.getHalongTime8,
              halong_time_9: disassemble_result_race_data.getHalongTime9,
              halong_time_10: disassemble_result_race_data.getHalongTime10,
              halong_time_11: disassemble_result_race_data.getHalongTime11,
              halong_time_12: disassemble_result_race_data.getHalongTime12,
              halong_time_13: disassemble_result_race_data.getHalongTime13,
              halong_time_14: disassemble_result_race_data.getHalongTime14,
              halong_time_15: disassemble_result_race_data.getHalongTime15,
              halong_time_16: disassemble_result_race_data.getHalongTime16,
              halong_time_17: disassemble_result_race_data.getHalongTime17,
              halong_time_18: disassemble_result_race_data.getHalongTime18,
              corner_1: disassemble_result_race_data.getCorner1,
              corner_2: disassemble_result_race_data.getCorner2,
              corner_3: disassemble_result_race_data.getCorner3,
              corner_4: disassemble_result_race_data.getCorner4,
              pace_up_position: disassemble_result_race_data.getPaceUpPosition,
              one_corner: disassemble_result_race_data.getOneCorner,
              corners_2: disassemble_result_race_data.getCorners2,
              mukaitadashi: disassemble_result_race_data.getMukaitadashi,
              triangular: disassemble_result_race_data.getTriangular,
              four_corners: disassemble_result_race_data.getFourCorners,
              straight_line: disassemble_result_race_data.getStraightLine,
              race_comments: disassemble_result_race_data.getRaceComments,
              reserve: disassemble_result_race_data.getReserve,
              new_line: disassemble_result_race_data.getNewLine,
          )
          result_race_datas << result_race_data
        end
      end
      ResultRaceData.import result_race_datas
    end
  end
end
