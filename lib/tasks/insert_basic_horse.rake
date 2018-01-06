namespace :insert_basic_horse do
  require_relative '../../app/helpers/disassemble_basic_horse.rb'
  require_relative '../../app/models/basic_horse.rb'
  require_relative '../../app/models/application_record.rb'
  BASIC_HORSE_TARGET_FILE = "db/resources/basic_horse/**/*"

  desc "basic_horse"
  task :basic_horse => :environment do
    targetFilesPath = Dir.glob BASIC_HORSE_TARGET_FILE
    targetFilesPath.each do |filePath|
      basicHorses = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassembleBasicHorse = DisassembleBasicHorse.new(line)
          basicHorse = BasicHorse.new(
              pedigree_register_code: disassembleBasicHorse.getPedigreeRegisterCode,
              horse_name: disassembleBasicHorse.getHorseName,
              gender_code: disassembleBasicHorse.getGenderCode,
              coat_color_code: disassembleBasicHorse.getCoatColorCode,
              horse_symbol_code: disassembleBasicHorse.getHorseSymbolCode,
              pedigree_info_father_name: disassembleBasicHorse.getPedigreeInfoFatherName,
              pedigree_info_mother_name: disassembleBasicHorse.getPedigreeInfoMotherName,
              pedigree_info_maternal_father_name: disassembleBasicHorse.getPedigreeInfoMaternalFatherName,
              pedigree_info_barth_on: disassembleBasicHorse.getPedigreeInfoFatherBarthOn,
              pedigree_info_father_barth_on: disassembleBasicHorse.getPedigreeInfoFatherBarthOn,
              pedigree_info_mother_barth_on: disassembleBasicHorse.getPedigreeInfoMotherBarthOn,
              pedigree_info_maternal_father_barth_on: disassembleBasicHorse.getPedigreeInfoMaternalFatherBarthOn,
              pedigree_info_owner_name: disassembleBasicHorse.getPedigreeInfoOwnerName,
              pedigree_info_owner_belong_code: disassembleBasicHorse.getPedigreeInfoOwnerBelongCode,
              pedigree_info_producer_name: disassembleBasicHorse.getPedigreeInfoProducerName,
              pedigree_info_production_place_name: disassembleBasicHorse.getPedigreeInfoProductionPlaceName,
              pedigree_info_register_del_flg: disassembleBasicHorse.getPedigreeInfoRegisterDelFlg,
              pedigree_info_data_ymd: disassembleBasicHorse.getPedigreeInfoDataYmd,
              pedigree_info_father_lineage_code: disassembleBasicHorse.getPedigreeInfoFatherLineageCode,
              pedigree_info_maternal_father_lineage_code: disassembleBasicHorse.getPedigreeInfoMaternalFatherLineageCode
          )
          basicHorses << basicHorse
        end
      end
      BasicHorse.import basicHorses
    end
  end
end
