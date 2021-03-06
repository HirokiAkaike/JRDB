namespace :insert_standard_quinella_place_odd do
  require_relative '../../app/helpers/disassemble_standard_quinella_place_odd.rb'
  require_relative '../../app/models/standard_quinella_place_odd.rb'
  require_relative '../../app/models/application_record.rb'
  STANDARD_QUINELLA_PLACE_ODD_TARGET_FILE = "db/resources/standard_quinella_place_odd/**/*"

  desc "standard_quinella_place_odd"
  task :standard_quinella_place_odd => :environment do
    targetFilesPath = Dir.glob STANDARD_QUINELLA_PLACE_ODD_TARGET_FILE
    targetFilesPath.each do |filePath|
      standard_quinella_place_odds = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_standard_quinella_place_odd = DisassembleStandardQuinellaPLaceOdd.new(line)
          standard_quinella_place_odd = StandardQuinellaPLaceOdd.new(
              race_key_course_code: disassemble_standard_quinella_place_odd.getRaceKeyCourseCode,
              race_key_year: disassemble_standard_quinella_place_odd.getRaceKeyYear,
              race_key_times: disassemble_standard_quinella_place_odd.getRaceKeyTimes,
              race_key_day: disassemble_standard_quinella_place_odd.getRaceKeyDay,
              race_key_number_of_race: disassemble_standard_quinella_place_odd.getRaceKeyNumberOfRace,
              registered_number: disassemble_standard_quinella_place_odd.getRegisteredNumber,
              quinella_place_odds1: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds1,
              quinella_place_odds2: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds2,
              quinella_place_odds3: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds3,
              quinella_place_odds4: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds4,
              quinella_place_odds5: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds5,
              quinella_place_odds6: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds6,
              quinella_place_odds7: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds7,
              quinella_place_odds8: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds8,
              quinella_place_odds9: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds9,
              quinella_place_odds10: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds10,
              quinella_place_odds11: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds11,
              quinella_place_odds12: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds12,
              quinella_place_odds13: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds13,
              quinella_place_odds14: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds14,
              quinella_place_odds15: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds15,
              quinella_place_odds16: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds16,
              quinella_place_odds17: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds17,
              quinella_place_odds18: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds18,
              quinella_place_odds19: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds19,
              quinella_place_odds20: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds20,
              quinella_place_odds21: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds21,
              quinella_place_odds22: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds22,
              quinella_place_odds23: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds23,
              quinella_place_odds24: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds24,
              quinella_place_odds25: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds25,
              quinella_place_odds26: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds26,
              quinella_place_odds27: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds27,
              quinella_place_odds28: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds28,
              quinella_place_odds29: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds29,
              quinella_place_odds30: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds30,
              quinella_place_odds31: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds31,
              quinella_place_odds32: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds32,
              quinella_place_odds33: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds33,
              quinella_place_odds34: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds34,
              quinella_place_odds35: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds35,
              quinella_place_odds36: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds36,
              quinella_place_odds37: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds37,
              quinella_place_odds38: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds38,
              quinella_place_odds39: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds39,
              quinella_place_odds40: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds40,
              quinella_place_odds41: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds41,
              quinella_place_odds42: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds42,
              quinella_place_odds43: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds43,
              quinella_place_odds44: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds44,
              quinella_place_odds45: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds45,
              quinella_place_odds46: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds46,
              quinella_place_odds47: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds47,
              quinella_place_odds48: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds48,
              quinella_place_odds49: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds49,
              quinella_place_odds50: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds50,
              quinella_place_odds51: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds51,
              quinella_place_odds52: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds52,
              quinella_place_odds53: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds53,
              quinella_place_odds54: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds54,
              quinella_place_odds55: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds55,
              quinella_place_odds56: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds56,
              quinella_place_odds57: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds57,
              quinella_place_odds58: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds58,
              quinella_place_odds59: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds59,
              quinella_place_odds60: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds60,
              quinella_place_odds61: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds61,
              quinella_place_odds62: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds62,
              quinella_place_odds63: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds63,
              quinella_place_odds64: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds64,
              quinella_place_odds65: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds65,
              quinella_place_odds66: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds66,
              quinella_place_odds67: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds67,
              quinella_place_odds68: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds68,
              quinella_place_odds69: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds69,
              quinella_place_odds70: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds70,
              quinella_place_odds71: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds71,
              quinella_place_odds72: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds72,
              quinella_place_odds73: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds73,
              quinella_place_odds74: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds74,
              quinella_place_odds75: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds75,
              quinella_place_odds76: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds76,
              quinella_place_odds77: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds77,
              quinella_place_odds78: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds78,
              quinella_place_odds79: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds79,
              quinella_place_odds80: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds80,
              quinella_place_odds81: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds81,
              quinella_place_odds82: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds82,
              quinella_place_odds83: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds83,
              quinella_place_odds84: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds84,
              quinella_place_odds85: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds85,
              quinella_place_odds86: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds86,
              quinella_place_odds87: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds87,
              quinella_place_odds88: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds88,
              quinella_place_odds89: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds89,
              quinella_place_odds90: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds90,
              quinella_place_odds91: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds91,
              quinella_place_odds92: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds92,
              quinella_place_odds93: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds93,
              quinella_place_odds94: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds94,
              quinella_place_odds95: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds95,
              quinella_place_odds96: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds96,
              quinella_place_odds97: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds97,
              quinella_place_odds98: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds98,
              quinella_place_odds99: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds99,
              quinella_place_odds100: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds100,
              quinella_place_odds101: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds101,
              quinella_place_odds102: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds102,
              quinella_place_odds103: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds103,
              quinella_place_odds104: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds104,
              quinella_place_odds105: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds105,
              quinella_place_odds106: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds106,
              quinella_place_odds107: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds107,
              quinella_place_odds108: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds108,
              quinella_place_odds109: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds109,
              quinella_place_odds110: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds110,
              quinella_place_odds111: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds111,
              quinella_place_odds112: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds112,
              quinella_place_odds113: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds113,
              quinella_place_odds114: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds114,
              quinella_place_odds115: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds115,
              quinella_place_odds116: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds116,
              quinella_place_odds117: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds117,
              quinella_place_odds118: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds118,
              quinella_place_odds119: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds119,
              quinella_place_odds120: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds120,
              quinella_place_odds121: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds121,
              quinella_place_odds122: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds122,
              quinella_place_odds123: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds123,
              quinella_place_odds124: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds124,
              quinella_place_odds125: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds125,
              quinella_place_odds126: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds126,
              quinella_place_odds127: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds127,
              quinella_place_odds128: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds128,
              quinella_place_odds129: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds129,
              quinella_place_odds130: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds130,
              quinella_place_odds131: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds131,
              quinella_place_odds132: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds132,
              quinella_place_odds133: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds133,
              quinella_place_odds134: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds134,
              quinella_place_odds135: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds135,
              quinella_place_odds136: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds136,
              quinella_place_odds137: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds137,
              quinella_place_odds138: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds138,
              quinella_place_odds139: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds139,
              quinella_place_odds140: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds140,
              quinella_place_odds141: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds141,
              quinella_place_odds142: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds142,
              quinella_place_odds143: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds143,
              quinella_place_odds144: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds144,
              quinella_place_odds145: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds145,
              quinella_place_odds146: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds146,
              quinella_place_odds147: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds147,
              quinella_place_odds148: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds148,
              quinella_place_odds149: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds149,
              quinella_place_odds150: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds150,
              quinella_place_odds151: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds151,
              quinella_place_odds152: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds152,
              quinella_place_odds153: disassemble_standard_quinella_place_odd.getQuinellaPlaceOdds153
          )
          standard_quinella_place_odds << standard_quinella_place_odd
        end
      end
      StandardQuinellaPLaceOdd.import standard_quinella_place_odds
    end
  end
end
