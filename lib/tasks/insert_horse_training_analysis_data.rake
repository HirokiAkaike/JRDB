namespace :insert_horse_training_analysis_data do
  require_relative '../../app/helpers/disassemble_horse_training_analysis_data.rb'
  require_relative '../../app/models/horse_training_analysis_data.rb'
  require_relative '../../app/models/application_record.rb'
  HORSE_TRAINING_ANALYSIS_DATA_TARGET_FILE = "db/resources/horse_training_analysis_data/**/*"

  desc "horse_training_analysis_data"
  task :horse_training_analysis_data => :environment do
    targetFilesPath = Dir.glob HORSE_TRAINING_ANALYSIS_DATA_TARGET_FILE
    targetFilesPath.each do |filePath|
      horse_training_analysis_datas = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_horse_training_analysis_data = DisassembleHorseTrainingAnalysisData.new(line)
          horse_training_analysis_data = HorseTrainingAnalysisData.new(
              race_key_course_code: disassemble_horse_training_analysis_data.getRaceKeyCourseCode,
              race_key_year: disassemble_horse_training_analysis_data.getRaceKeyYear,
              race_key_times: disassemble_horse_training_analysis_data.getRaceKeyTimes,
              race_key_day: disassemble_horse_training_analysis_data.getRaceKeyDay,
              race_key_number_of_race: disassemble_horse_training_analysis_data.getRaceKeyNumberOfRace,
              horse_numbers: disassemble_horse_training_analysis_data.getHorseNumbers,
              torture_type: disassemble_horse_training_analysis_data.getTortureType,
              torture_course_type: disassemble_horse_training_analysis_data.getTortureCourseType,
              hill: disassemble_horse_training_analysis_data.getHill,
              wood_course: disassemble_horse_training_analysis_data.getWoodCourse,
              dart_coase: disassemble_horse_training_analysis_data.getDartCoase,
              turf_course: disassemble_horse_training_analysis_data.getTurfCourse,
              pool_torture: disassemble_horse_training_analysis_data.getPoolTorture,
              failure_practice: disassemble_horse_training_analysis_data.getFailurePractice,
              poly_track: disassemble_horse_training_analysis_data.getPolyTrack,
              torture_distance: disassemble_horse_training_analysis_data.getTortureDistance,
              torture_emphasis: disassemble_horse_training_analysis_data.getTortureEmphasis,
              add_switching_index: disassemble_horse_training_analysis_data.getAddSwitchingIndex,
              finish_index: disassemble_horse_training_analysis_data.getFinishIndex,
              torture_amount_evaluation: disassemble_horse_training_analysis_data.getTortureAmountEvaluation,
              index_change_finish: disassemble_horse_training_analysis_data.getIndexChangeFinish,
              torture_comments: disassemble_horse_training_analysis_data.getTortureComments,
              comments_date: disassemble_horse_training_analysis_data.getCommentsDate,
              torture_evaluation: disassemble_horse_training_analysis_data.getTortureEvaluation,
              reserve: disassemble_horse_training_analysis_data.getReserve,
              new_line: disassemble_horse_training_analysis_data.getNewLine,
          )
          horse_training_analysis_datas << horse_training_analysis_data
        end
      end
      HorseTrainingAnalysisData.import horse_training_analysis_datas
    end
  end
end
