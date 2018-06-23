namespace :insert_deleted_horse_data do
  require_relative '../../app/helpers/disassemble_deleted_horse_data.rb'
  require_relative '../../app/models/deleted_horse_data.rb'
  require_relative '../../app/models/application_record.rb'
  DELETED_HORSE_DATA_TARGET_FILE = "db/resources/deleted_horse_data/**/*"

  desc "deleted_horse_data"
  task :deleted_horse_data => :environment do
    targetFilesPath = Dir.glob DELETED_HORSE_DATA_TARGET_FILE
    targetFilesPath.each do |filePath|
      deleted_horse_datas = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_deleted_horse_data = DisassembleDeletedHorse_Data.new(line)
          deleted_horse_data = DeletedHorse_Data.new(
              pedigree_registration_number: disassemble_deleted_horse_data.getPedigreeRegistrationNumber,
          )
          deleted_horse_datas << deleted_horse_data
        end
      end
      DeletedHorse_Data.import deleted_horse_datas
    end
  end
end
