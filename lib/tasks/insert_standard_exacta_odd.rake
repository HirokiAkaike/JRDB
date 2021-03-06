namespace :insert_standard_exacta_odd do
  require_relative '../../app/helpers/disassemble_standard_exacta_odd.rb'
  require_relative '../../app/models/standard_exacta_odd.rb'
  require_relative '../../app/models/application_record.rb'
  C_TARGET_FILE = "db/resources/standard_exacta_odd.rake/**/*"

  desc "standard_exacta_odd"
  task :standard_exacta_odd => :environment do
    targetFilesPath = Dir.glob STANDARD_EXACTA_ODD_TARGET_FILE
    targetFilesPath.each do |filePath|
      standard_exacta_odds = []
      File.open(filePath) do |file|
        if File::ftype(filePath) == "directory"
          next
        end
        file.each_line do |line|
          disassemble_standard_exacta_odd = DisassembleStandardExactaOdd.new(line)
          standard_exacta_odd = StandardExactaOdd.new(

              race_key_course_code: disassemble_standard_exacta_odd.getRaceKeyCourseCode,
              race_key_year: disassemble_standard_exacta_odd.getRaceKeyYear,
              race_key_times: disassemble_standard_exacta_odd.getRaceKeyTimes,
              race_key_day: disassemble_standard_exacta_odd.getRaceKeyDay,
              race_key_number_of_race: disassemble_standard_exacta_odd.getRaceKeyNumberOfRace,
              registered_number: disassemble_standard_exacta_odd.getRegisteredNumber,
              standard_exacta_odds1: disassemble_standard_exacta_odd.getStandardExactaOdds1,
              standard_exacta_odds2: disassemble_standard_exacta_odd.getStandardExactaOdds2,
              standard_exacta_odds3: disassemble_standard_exacta_odd.getStandardExactaOdds3,
              standard_exacta_odds4: disassemble_standard_exacta_odd.getStandardExactaOdds4,
              standard_exacta_odds5: disassemble_standard_exacta_odd.getStandardExactaOdds5,
              standard_exacta_odds6: disassemble_standard_exacta_odd.getStandardExactaOdds6,
              standard_exacta_odds7: disassemble_standard_exacta_odd.getStandardExactaOdds7,
              standard_exacta_odds8: disassemble_standard_exacta_odd.getStandardExactaOdds8,
              standard_exacta_odds9: disassemble_standard_exacta_odd.getStandardExactaOdds9,
              standard_exacta_odds10: disassemble_standard_exacta_odd.getStandardExactaOdds10,
              standard_exacta_odds11: disassemble_standard_exacta_odd.getStandardExactaOdds11,
              standard_exacta_odds12: disassemble_standard_exacta_odd.getStandardExactaOdds12,
              standard_exacta_odds13: disassemble_standard_exacta_odd.getStandardExactaOdds13,
              standard_exacta_odds14: disassemble_standard_exacta_odd.getStandardExactaOdds14,
              standard_exacta_odds15: disassemble_standard_exacta_odd.getStandardExactaOdds15,
              standard_exacta_odds16: disassemble_standard_exacta_odd.getStandardExactaOdds16,
              standard_exacta_odds17: disassemble_standard_exacta_odd.getStandardExactaOdds17,
              standard_exacta_odds18: disassemble_standard_exacta_odd.getStandardExactaOdds18,
              standard_exacta_odds19: disassemble_standard_exacta_odd.getStandardExactaOdds19,
              standard_exacta_odds20: disassemble_standard_exacta_odd.getStandardExactaOdds20,
              standard_exacta_odds21: disassemble_standard_exacta_odd.getStandardExactaOdds21,
              standard_exacta_odds22: disassemble_standard_exacta_odd.getStandardExactaOdds22,
              standard_exacta_odds23: disassemble_standard_exacta_odd.getStandardExactaOdds23,
              standard_exacta_odds24: disassemble_standard_exacta_odd.getStandardExactaOdds24,
              standard_exacta_odds25: disassemble_standard_exacta_odd.getStandardExactaOdds25,
              standard_exacta_odds26: disassemble_standard_exacta_odd.getStandardExactaOdds26,
              standard_exacta_odds27: disassemble_standard_exacta_odd.getStandardExactaOdds27,
              standard_exacta_odds28: disassemble_standard_exacta_odd.getStandardExactaOdds28,
              standard_exacta_odds29: disassemble_standard_exacta_odd.getStandardExactaOdds29,
              standard_exacta_odds30: disassemble_standard_exacta_odd.getStandardExactaOdds30,
              standard_exacta_odds31: disassemble_standard_exacta_odd.getStandardExactaOdds31,
              standard_exacta_odds32: disassemble_standard_exacta_odd.getStandardExactaOdds32,
              standard_exacta_odds33: disassemble_standard_exacta_odd.getStandardExactaOdds33,
              standard_exacta_odds34: disassemble_standard_exacta_odd.getStandardExactaOdds34,
              standard_exacta_odds35: disassemble_standard_exacta_odd.getStandardExactaOdds35,
              standard_exacta_odds36: disassemble_standard_exacta_odd.getStandardExactaOdds36,
              standard_exacta_odds37: disassemble_standard_exacta_odd.getStandardExactaOdds37,
              standard_exacta_odds38: disassemble_standard_exacta_odd.getStandardExactaOdds38,
              standard_exacta_odds39: disassemble_standard_exacta_odd.getStandardExactaOdds39,
              standard_exacta_odds40: disassemble_standard_exacta_odd.getStandardExactaOdds40,
              standard_exacta_odds41: disassemble_standard_exacta_odd.getStandardExactaOdds41,
              standard_exacta_odds42: disassemble_standard_exacta_odd.getStandardExactaOdds42,
              standard_exacta_odds43: disassemble_standard_exacta_odd.getStandardExactaOdds43,
              standard_exacta_odds44: disassemble_standard_exacta_odd.getStandardExactaOdds44,
              standard_exacta_odds45: disassemble_standard_exacta_odd.getStandardExactaOdds45,
              standard_exacta_odds46: disassemble_standard_exacta_odd.getStandardExactaOdds46,
              standard_exacta_odds47: disassemble_standard_exacta_odd.getStandardExactaOdds47,
              standard_exacta_odds48: disassemble_standard_exacta_odd.getStandardExactaOdds48,
              standard_exacta_odds49: disassemble_standard_exacta_odd.getStandardExactaOdds49,
              standard_exacta_odds50: disassemble_standard_exacta_odd.getStandardExactaOdds50,
              standard_exacta_odds51: disassemble_standard_exacta_odd.getStandardExactaOdds51,
              standard_exacta_odds52: disassemble_standard_exacta_odd.getStandardExactaOdds52,
              standard_exacta_odds53: disassemble_standard_exacta_odd.getStandardExactaOdds53,
              standard_exacta_odds54: disassemble_standard_exacta_odd.getStandardExactaOdds54,
              standard_exacta_odds55: disassemble_standard_exacta_odd.getStandardExactaOdds55,
              standard_exacta_odds56: disassemble_standard_exacta_odd.getStandardExactaOdds56,
              standard_exacta_odds57: disassemble_standard_exacta_odd.getStandardExactaOdds57,
              standard_exacta_odds58: disassemble_standard_exacta_odd.getStandardExactaOdds58,
              standard_exacta_odds59: disassemble_standard_exacta_odd.getStandardExactaOdds59,
              standard_exacta_odds60: disassemble_standard_exacta_odd.getStandardExactaOdds60,
              standard_exacta_odds61: disassemble_standard_exacta_odd.getStandardExactaOdds61,
              standard_exacta_odds62: disassemble_standard_exacta_odd.getStandardExactaOdds62,
              standard_exacta_odds63: disassemble_standard_exacta_odd.getStandardExactaOdds63,
              standard_exacta_odds64: disassemble_standard_exacta_odd.getStandardExactaOdds64,
              standard_exacta_odds65: disassemble_standard_exacta_odd.getStandardExactaOdds65,
              standard_exacta_odds66: disassemble_standard_exacta_odd.getStandardExactaOdds66,
              standard_exacta_odds67: disassemble_standard_exacta_odd.getStandardExactaOdds67,
              standard_exacta_odds68: disassemble_standard_exacta_odd.getStandardExactaOdds68,
              standard_exacta_odds69: disassemble_standard_exacta_odd.getStandardExactaOdds69,
              standard_exacta_odds70: disassemble_standard_exacta_odd.getStandardExactaOdds70,
              standard_exacta_odds71: disassemble_standard_exacta_odd.getStandardExactaOdds71,
              standard_exacta_odds72: disassemble_standard_exacta_odd.getStandardExactaOdds72,
              standard_exacta_odds73: disassemble_standard_exacta_odd.getStandardExactaOdds73,
              standard_exacta_odds74: disassemble_standard_exacta_odd.getStandardExactaOdds74,
              standard_exacta_odds75: disassemble_standard_exacta_odd.getStandardExactaOdds75,
              standard_exacta_odds76: disassemble_standard_exacta_odd.getStandardExactaOdds76,
              standard_exacta_odds77: disassemble_standard_exacta_odd.getStandardExactaOdds77,
              standard_exacta_odds78: disassemble_standard_exacta_odd.getStandardExactaOdds78,
              standard_exacta_odds79: disassemble_standard_exacta_odd.getStandardExactaOdds79,
              standard_exacta_odds80: disassemble_standard_exacta_odd.getStandardExactaOdds80,
              standard_exacta_odds81: disassemble_standard_exacta_odd.getStandardExactaOdds81,
              standard_exacta_odds82: disassemble_standard_exacta_odd.getStandardExactaOdds82,
              standard_exacta_odds83: disassemble_standard_exacta_odd.getStandardExactaOdds83,
              standard_exacta_odds84: disassemble_standard_exacta_odd.getStandardExactaOdds84,
              standard_exacta_odds85: disassemble_standard_exacta_odd.getStandardExactaOdds85,
              standard_exacta_odds86: disassemble_standard_exacta_odd.getStandardExactaOdds86,
              standard_exacta_odds87: disassemble_standard_exacta_odd.getStandardExactaOdds87,
              standard_exacta_odds88: disassemble_standard_exacta_odd.getStandardExactaOdds88,
              standard_exacta_odds89: disassemble_standard_exacta_odd.getStandardExactaOdds89,
              standard_exacta_odds90: disassemble_standard_exacta_odd.getStandardExactaOdds90,
              standard_exacta_odds91: disassemble_standard_exacta_odd.getStandardExactaOdds91,
              standard_exacta_odds92: disassemble_standard_exacta_odd.getStandardExactaOdds92,
              standard_exacta_odds93: disassemble_standard_exacta_odd.getStandardExactaOdds93,
              standard_exacta_odds94: disassemble_standard_exacta_odd.getStandardExactaOdds94,
              standard_exacta_odds95: disassemble_standard_exacta_odd.getStandardExactaOdds95,
              standard_exacta_odds96: disassemble_standard_exacta_odd.getStandardExactaOdds96,
              standard_exacta_odds97: disassemble_standard_exacta_odd.getStandardExactaOdds97,
              standard_exacta_odds98: disassemble_standard_exacta_odd.getStandardExactaOdds98,
              standard_exacta_odds99: disassemble_standard_exacta_odd.getStandardExactaOdds99,
              standard_exacta_odds100: disassemble_standard_exacta_odd.getStandardExactaOdds100,
              standard_exacta_odds101: disassemble_standard_exacta_odd.getStandardExactaOdds101,
              standard_exacta_odds102: disassemble_standard_exacta_odd.getStandardExactaOdds102,
              standard_exacta_odds103: disassemble_standard_exacta_odd.getStandardExactaOdds103,
              standard_exacta_odds104: disassemble_standard_exacta_odd.getStandardExactaOdds104,
              standard_exacta_odds105: disassemble_standard_exacta_odd.getStandardExactaOdds105,
              standard_exacta_odds106: disassemble_standard_exacta_odd.getStandardExactaOdds106,
              standard_exacta_odds107: disassemble_standard_exacta_odd.getStandardExactaOdds107,
              standard_exacta_odds108: disassemble_standard_exacta_odd.getStandardExactaOdds108,
              standard_exacta_odds109: disassemble_standard_exacta_odd.getStandardExactaOdds109,
              standard_exacta_odds110: disassemble_standard_exacta_odd.getStandardExactaOdds110,
              standard_exacta_odds111: disassemble_standard_exacta_odd.getStandardExactaOdds111,
              standard_exacta_odds112: disassemble_standard_exacta_odd.getStandardExactaOdds112,
              standard_exacta_odds113: disassemble_standard_exacta_odd.getStandardExactaOdds113,
              standard_exacta_odds114: disassemble_standard_exacta_odd.getStandardExactaOdds114,
              standard_exacta_odds115: disassemble_standard_exacta_odd.getStandardExactaOdds115,
              standard_exacta_odds116: disassemble_standard_exacta_odd.getStandardExactaOdds116,
              standard_exacta_odds117: disassemble_standard_exacta_odd.getStandardExactaOdds117,
              standard_exacta_odds118: disassemble_standard_exacta_odd.getStandardExactaOdds118,
              standard_exacta_odds119: disassemble_standard_exacta_odd.getStandardExactaOdds119,
              standard_exacta_odds120: disassemble_standard_exacta_odd.getStandardExactaOdds120,
              standard_exacta_odds121: disassemble_standard_exacta_odd.getStandardExactaOdds121,
              standard_exacta_odds122: disassemble_standard_exacta_odd.getStandardExactaOdds122,
              standard_exacta_odds123: disassemble_standard_exacta_odd.getStandardExactaOdds123,
              standard_exacta_odds124: disassemble_standard_exacta_odd.getStandardExactaOdds124,
              standard_exacta_odds125: disassemble_standard_exacta_odd.getStandardExactaOdds125,
              standard_exacta_odds126: disassemble_standard_exacta_odd.getStandardExactaOdds126,
              standard_exacta_odds127: disassemble_standard_exacta_odd.getStandardExactaOdds127,
              standard_exacta_odds128: disassemble_standard_exacta_odd.getStandardExactaOdds128,
              standard_exacta_odds129: disassemble_standard_exacta_odd.getStandardExactaOdds129,
              standard_exacta_odds130: disassemble_standard_exacta_odd.getStandardExactaOdds130,
              standard_exacta_odds131: disassemble_standard_exacta_odd.getStandardExactaOdds131,
              standard_exacta_odds132: disassemble_standard_exacta_odd.getStandardExactaOdds132,
              standard_exacta_odds133: disassemble_standard_exacta_odd.getStandardExactaOdds133,
              standard_exacta_odds134: disassemble_standard_exacta_odd.getStandardExactaOdds134,
              standard_exacta_odds135: disassemble_standard_exacta_odd.getStandardExactaOdds135,
              standard_exacta_odds136: disassemble_standard_exacta_odd.getStandardExactaOdds136,
              standard_exacta_odds137: disassemble_standard_exacta_odd.getStandardExactaOdds137,
              standard_exacta_odds138: disassemble_standard_exacta_odd.getStandardExactaOdds138,
              standard_exacta_odds139: disassemble_standard_exacta_odd.getStandardExactaOdds139,
              standard_exacta_odds140: disassemble_standard_exacta_odd.getStandardExactaOdds140,
              standard_exacta_odds141: disassemble_standard_exacta_odd.getStandardExactaOdds141,
              standard_exacta_odds142: disassemble_standard_exacta_odd.getStandardExactaOdds142,
              standard_exacta_odds143: disassemble_standard_exacta_odd.getStandardExactaOdds143,
              standard_exacta_odds144: disassemble_standard_exacta_odd.getStandardExactaOdds144,
              standard_exacta_odds145: disassemble_standard_exacta_odd.getStandardExactaOdds145,
              standard_exacta_odds146: disassemble_standard_exacta_odd.getStandardExactaOdds146,
              standard_exacta_odds147: disassemble_standard_exacta_odd.getStandardExactaOdds147,
              standard_exacta_odds148: disassemble_standard_exacta_odd.getStandardExactaOdds148,
              standard_exacta_odds149: disassemble_standard_exacta_odd.getStandardExactaOdds149,
              standard_exacta_odds150: disassemble_standard_exacta_odd.getStandardExactaOdds150,
              standard_exacta_odds151: disassemble_standard_exacta_odd.getStandardExactaOdds151,
              standard_exacta_odds152: disassemble_standard_exacta_odd.getStandardExactaOdds152,
              standard_exacta_odds153: disassemble_standard_exacta_odd.getStandardExactaOdds153

          )
          standard_exacta_odds << standard_exacta_odd
        end
      end
      StandardExactaOdd.import standard_exacta_odds
    end
  end
end
