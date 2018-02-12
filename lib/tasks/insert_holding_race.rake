namespace :insert_holding_race do
  require_relative '../../app/helpers/disassemble_holding_race.rb'
  require_relative '../../app/models/holding_race.rb'
  require_relative '../../app/models/application_record.rb'
  HOLDING_RACE_TARGET_FILE = "db/resources/holding_race/**/*"

  desc "holding_race"
  task :holding_race => :environment do
    targetFilesPath = Dir.glob HOLDING_RACE_TARGET_FILE
    targetFilesPath.each do |filePath|
      holding_races = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassembleHoldingRace = DisassembleHoldingRace.new(line)
          holding_race = HoldingRace.new(
              holding_race_key: disassembleHoldingRace.getHoldingRaceKey,
              race_key_course_code: disassembleHoldingRace.getRaceKeyCourseCode,
              race_key_year: disassembleHoldingRace.getRaceKeyYear,
              race_key_times: disassembleHoldingRace.getRaceKeyTimes,
              race_key_day: disassembleHoldingRace.getRaceKeyDay,
              date_ymd: disassembleHoldingRace.getDateYmd,
              holding_class: disassembleHoldingRace.getHoldingClass,
              day_of_week: disassembleHoldingRace.getDayOfWeek,
              course_name: disassembleHoldingRace.getCourseName,
              weather_code: disassembleHoldingRace.getWeatherCode,
              turf_course_state_code: disassembleHoldingRace.getTurfCourseStateCode,
              turf_course_Inside_state: disassembleHoldingRace.getTurfCourseInsideState,
              turf_course_middle_state: disassembleHoldingRace.getTurfCourseMiddleState,
              turf_course_outside_state: disassembleHoldingRace.getTurfCourseOutsideState,
              turf_course_difference: disassembleHoldingRace.getTurfCourseDifference,
              linear_course_difference_must_inside: disassembleHoldingRace.getLinearCourseDifferenceMustInside,
              linear_course_difference_inside: disassembleHoldingRace.getLinearCourseDifferenceInside,
              linear_course_difference_middle: disassembleHoldingRace.getLinearCourseDifferenceMiddle,
              linear_course_difference_outside: disassembleHoldingRace.getLinearCourseDifferenceOutside,
              linear_course_difference_must_outside: disassembleHoldingRace.getLinearCourseDifferenceMustOutside,
              dirt_course_state_code: disassembleHoldingRace.getDirtCourseStateCode,
              dirt_course_Inside_state: disassembleHoldingRace.getDirtCourseInsideState,
              dirt_course_middle_state: disassembleHoldingRace.getDirtCourseMiddleState,
              dirt_course_outside_state: disassembleHoldingRace.getDirtCourseOutsideState,
              dirt_course_difference: disassembleHoldingRace.getDirtCourseDifference,
              data_class: disassembleHoldingRace.getDataClass
              )
          holding_races << holding_race
        end
      end
      HoldingRace.import holding_races
    end
  end
end
