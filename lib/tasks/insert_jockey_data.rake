namespace :insert_jockey_data do
  require_relative '../../app/helpers/disassemble_jockey_data.rb'
  require_relative '../../app/models/jockey_data.rb'
  require_relative '../../app/models/application_record.rb'
  JOCKEY_DATA_TARGET_FILE = "db/resources/jockey_data/**/*"

  desc "jockey_data"
  task :jockey_data => :environment do
    targetFilesPath = Dir.glob JOCKEY_DATA_TARGET_FILE
    targetFilesPath.each do |filePath|
      jockey_datas = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_jockey_data = DisassembleJockeyData.new(line)
          jockey_data = JockeyData.new(
              jockey_code: disassemble_jockey_data.getJockeyCode,
              deregistration_flag: disassemble_jockey_data.getDeregistrationFlag,
              deregistration_date: disassemble_jockey_data.getDeregistrationDate,
              jockey_name: disassemble_jockey_data.getJockeyName,
              jockey_kana: disassemble_jockey_data.getJockeyKana,
              jockey_name_abbreviation: disassemble_jockey_data.getJockeyNameAbbreviation,
              affiliation_code: disassemble_jockey_data.getAffiliationCode,
              it_belongs_to_the_region_name: disassemble_jockey_data.getItBelongsToTheRegionName,
              birthday: disassemble_jockey_data.getBirthday,
              the_first_license_year: disassemble_jockey_data.getTheFirstLicenseYear,
              apprentice_division: disassemble_jockey_data.getApprenticeDivision,
              affiliation_stables: disassemble_jockey_data.getAffiliationStables,
              jockey_comment: disassemble_jockey_data.getJockeyComment,
              comments_input_date: disassemble_jockey_data.getCommentsInputDate,
              this_year_leading: disassemble_jockey_data.getThisYearLeading,
              this_year_flat_results: disassemble_jockey_data.getThisYearFlatResults,
              this_year_failure_results: disassemble_jockey_data.getThisYearFailureResults,
              this_year_the_number_of_special_wins: disassemble_jockey_data.getThisYearTheNumberOfSpecialWins,
              this_year_stakes_number_of_wins: disassemble_jockey_data.getThisYearStakesNumberOfWins,
              last_year_leading: disassemble_jockey_data.getLastYearLeading,
              last_year_flat_results: disassemble_jockey_data.getLastYearFlatResults,
              last_year_failure_results: disassemble_jockey_data.getLastYearFailureResults,
              special_wins_the_number_of_last_year: disassemble_jockey_data.getSpecialWinsTheNumberOfLastYear,
              stakes_number_of_wins_last_year: disassemble_jockey_data.getStakesNumberOfWinsLastYear,
              total_flat_results: disassemble_jockey_data.getTotalFlatResults,
              total_failure_results: disassemble_jockey_data.getTotalFailureResults,
              data_date: disassemble_jockey_data.getDataDate,
          )
          jockey_datas << jockey_data
        end
      end
      JockeyData.import jockey_datas
    end
  end
end
