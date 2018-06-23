namespace :insert_trainer_data do
  require_relative '../../app/helpers/disassemble_trainer_data.rb'
  require_relative '../../app/models/trainer_data.rb'
  require_relative '../../app/models/application_record.rb'
  TV_PROGRAM_TARGET_FILE = "db/resources/trainer_data/**/*"

  desc "trainer_data"
  task :trainer_data => :environment do
    targetFilesPath = Dir.glob TV_PROGRAM_TARGET_FILE
    targetFilesPath.each do |filePath|
      trainer_datas = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_trainer_data = DisassembleTrainerData.new(line)
          trainer_data = TrainerData.new(
              trainer_code: disassemble_trainer_data.getTrainerCode,
              deregistration_flag: disassemble_trainer_data.getDeregistrationFlag,
              de_registration_date: disassemble_trainer_data.getDeRegistrationDate,
              trainer_name: disassemble_trainer_data.getTrainerName,
              trainer_kana: disassemble_trainer_data.getTrainerKana,
              trainer_name_abbreviation: disassemble_trainer_data.getTrainerNameAbbreviation,
              affiliation_code: disassemble_trainer_data.getAffiliationCode,
              it_belongs_to_the_region_name: disassemble_trainer_data.getItBelongsToTheRegionName,
              birthday: disassemble_trainer_data.getBirthday,
              the_first_license_year: disassemble_trainer_data.getTheFirstLicenseYear,
              trainer_comments: disassemble_trainer_data.getTrainerComments,
              comments_input_date: disassemble_trainer_data.getCommentsInputDate,
              this_year_leading: disassemble_trainer_data.getThisYearLeading,
              this_year_flat_results: disassemble_trainer_data.getThisYearFlatResults,
              this_year_failure_results: disassemble_trainer_data.getThisYearFailureResults,
              this_year_the_number_of_special_wins: disassemble_trainer_data.getThisYearTheNumberOfSpecialWins,
              this_year_stakes_number_of_wins: disassemble_trainer_data.getThisYearStakesNumberOfWins,
              last_year_leading: disassemble_trainer_data.getLastYearLeading,
              last_year_flat_results: disassemble_trainer_data.getLastYearFlatResults,
              last_year_failure_results: disassemble_trainer_data.getLastYearFailureResults,
              special_wins_the_number_of_last_year: disassemble_trainer_data.getSpecialWinsTheNumberOfLastYear,
              stakes_number_of_wins_last_year: disassemble_trainer_data.getStakesNumberOfWinsLastYear,
              total_flat_results: disassemble_trainer_data.getTotalFlatResults,
              total_failure_results: disassemble_trainer_data.getTotalFailureResults,
              data_date: disassemble_trainer_data.getDataDate,
          )
          trainer_datas << trainer_data
        end
      end
      TrainerData.import trainer_datas
    end
  end
end
