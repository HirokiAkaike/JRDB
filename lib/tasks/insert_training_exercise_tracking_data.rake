namespace :insert_training_exercise_tracking_data do
  require_relative '../../app/helpers/disassemble_training_exercise_tracking_data.rb'
  require_relative '../../app/models/training_exercise_tracking_data.rb'
  require_relative '../../app/models/application_record.rb'
  TRAINING_EXERCISE_TRACKING_DATA_TARGET_FILE = "db/resources/training_exercise_tracking_data/**/*"

  desc "training_exercise_tracking_data"
  task :training_exercise_tracking_data => :environment do
    targetFilesPath = Dir.glob TRAINING_EXERCISE_TRACKING_DATA_TARGET_FILE
    targetFilesPath.each do |filePath|
      training_exercise_tracking_datas = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_training_exercise_tracking_data = DisassembleTrainingExerciseTrackingData.new(line)
          training_exercise_tracking_data = TrainingExerciseTrackingData.new(
              race_key_course_cod:  disassemble_training_exercise_tracking_data.getRaceKeyCourseCode,
              race_key_yea:  disassemble_training_exercise_tracking_data.getRaceKeyYear,
              race_key_time:  disassemble_training_exercise_tracking_data.getRaceKeyTimes,
              race_key_da:  disassemble_training_exercise_tracking_data.getRaceKeyDay,
              race_key_number_of_rac:  disassemble_training_exercise_tracking_data.getRaceKeyNumberOfRace,
              horse_number:  disassemble_training_exercise_tracking_data.getHorseNumbers,
              day_of_the_wee:  disassemble_training_exercise_tracking_data.getDayOfTheWeek,
              torture_dat:  disassemble_training_exercise_tracking_data.getTortureDate,
              number_of_time:  disassemble_training_exercise_tracking_data.getNumberOfTimes,
              torture_course_cod:  disassemble_training_exercise_tracking_data.getTortureCourseCode,
              add_switching_typ:  disassemble_training_exercise_tracking_data.getAddSwitchingType,
              state_chas:  disassemble_training_exercise_tracking_data.getStateChase,
              take_the_rol:  disassemble_training_exercise_tracking_data.getTakeTheRole,
              torture_:  disassemble_training_exercise_tracking_data.getTortureF,
              ten_:  disassemble_training_exercise_tracking_data.getTenF,
              intermediate_:  disassemble_training_exercise_tracking_data.getIntermediateF,
              put_away_:  disassemble_training_exercise_tracking_data.getPutAwayF,
              ten_f_inde:  disassemble_training_exercise_tracking_data.getTenFIndex,
              intermediate_f_inde:  disassemble_training_exercise_tracking_data.getIntermediateFIndex,
              put_away_f_inde:  disassemble_training_exercise_tracking_data.getPutAwayFIndex,
              add_switching_inde:  disassemble_training_exercise_tracking_data.getAddSwitchingIndex,
              together_with_the_results: disassemble_training_exercise_tracking_data.getTogetherWithTheResults,
              add_switching_typ:  disassemble_training_exercise_tracking_data.getAddSwitchingType,
              ag:  disassemble_training_exercise_tracking_data.getAge,
              clas:  disassemble_training_exercise_tracking_data.getClass,
              reserv:  disassemble_training_exercise_tracking_data.getReserve,
              new_lin:  disassemble_training_exercise_tracking_data.getNewLine,
          )
          training_exercise_tracking_datas << training_exercise_tracking_data
        end
      end
      TrainingExerciseTrackingData.import training_exercise_tracking_datas
    end
  end
end
