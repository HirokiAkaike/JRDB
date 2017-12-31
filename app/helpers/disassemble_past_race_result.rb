class DisassemblePastRaceResult
  #レースキー
  RACE_KEY_COURSE_CODE = (0..1)
  RACE_KEY_YEAR = (2..3)
  RACE_KEY_TIMES = 4
  RACE_KEY_DAY = 5
  RACE_KEY_NUMBER_OF_RACE = (6..7)
  RACE_KEY_HORSE_NUMBER = (8..9)
  #競争成績キー
  RACE_PERFORMANCE_PEDIGREE_REGISTER_CODE = (10..17)
  RACE_PERFORMANCE_DATE_YMD = (18..25)
  RACE_PERFORMANCE_HORSE_NAME = (26..61)
  #レース条件
  RACE_CONDITION_DISTANCE = (62..65)
  #レース条件＿トラック情報
  TRUCK_TURF_DIRT_FAULT_CODE = 66
  TRUCK_RIGHT_OR_LEFT = 67
  TRUCK_INSIDE_OR_OUTSIDE = 68
  #レース条件
  RACE_CONDITION_RIDING_GROUND_CONDITION = (69..70)
  RACE_CONDITION_CLASS = (71..72)
  RACE_CONDITION_REQUIREMENT = (73..74)
  RACE_CONDITION_SYMBOL = (75..77)
  RACE_CONDITION_WEIGHT = 78
  RACE_CONDITION_GRADE = 79
  RACE_CONDITION_RACE_NAME = (80..129)
  RACE_CONDITION_HORSE_COUNT = (130..131)
  RACE_CONDITION_RACE_NAME_SHORT = (132..139)

  #馬成績
  HORSE_RACE_PERFORMANCE_RANKING = (140..141)
  HORSE_RACE_PERFORMANCE_ABNORMAL_CLASSIFICATION = 142
  HORSE_RACE_PERFORMANCE_TIME = (143..146)
  HORSE_RACE_PERFORMANCE_BASIS_WEIGHT = (147..149)
  HORSE_RACE_PERFORMANCE_JOCKEY_NAME = (150..161)
  HORSE_RACE_PERFORMANCE_TRAINER_NAME = (162..173)
  HORSE_RACE_PERFORMANCE_CONFIRM_WIN_ODDS = (174..179)
  HORSE_RACE_PERFORMANCE_CONFIRM_WIN_POPULAR_RANK = (180..181)

  #JRDBデータ
  JRDB_IDM = (182..184)
  JRDB_PRIMARY_POINT = (185..187)
  JRDB_RIDING_GROUND_REFERENCE = (188..190)
  JRDB_PACE = (191..193)
  JRDB_LAGGING = (194..196)
  JRDB_POSITION_OF_RACE = (197..199)
  JRDB_UNFAVORABLE = (200..202)
  JRDB_UNFAVORABLE_BEFORE = (203..205)
  JRDB_UNFAVORABLE_MIDDLE = (206..208)
  JRDB_UNFAVORABLE_AFTER = (209..211)
  JRDB_RACE = (212..214)
  JRDB_COURSE_REMOVAL = 215
  JRDB_RISING_CODE = 216
  JRDB_CLASS_CODE = (217..218)
  JRDB_HORSE_BODY_CODE = 219
  JRDB_SIGN_CODE = 220
  JRDB_RACE_PACE = 221
  JRDB_HORSE_PACE = 222
  JRDB_TEN_INDEX = (223..227)
  JRDB_RISING_INDEX_CODE = (228..232)
  JRDB_PACE_INDEX = (233..237)
  JRDB_RACE_PACE_INDEX = (238..242)
  JRDB_FIRST_SECOND_HORSE_NAME = (243..254)
  JRDB_FIRST_SECOND_HORSE_TIME_REFERENCE = (255..257)
  JRDB_BEFORE_3F_TIME = (258..260)
  JRDB_AFTER_3F_TIME = (261..263)
  JRDB_REMARKS = (264..287)

  attr_accessor :pastRaceResult

  def initialize(pastRaceResultRecord)
    @pastRaceResult = pastRaceResultRecord
  end

  def getRacePerformanceHoreseName
    @pastRaceResult.b(RACE_PERFORMANCE_HORESE_NAME).force_encoding("utf-8")
  end

  #レース条件距離を取得する
  def getRaceConditionDistance
    @pastRaceResult.b(RACE_CONDITION_DISTANCE).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿芝ダ障害コードを取得する
  def getTruckTurfDirtFaultCode
    @pastRaceResult.b(TRUCK_TURF_DIRT_FAULT_CODE).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿右左コードを取得する
  def getTruckRightOrLeft
    @pastRaceResult.b(TRUCK_RIGHT_OR_LEFT).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿内外を取得する
  def getTruckInsideOrOutside
    @pastRaceResult.b(TRUCK_INSIDE_OR_OUTSIDE).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿馬場状態を取得する
  def getRaceConditionRidingGroundCondition
    @pastRaceResult.b(RACE_CONDITION_RIDING_GROUND_CONDITION).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿種別を取得する
  def getRaceConditionClass
    @pastRaceResult.b(RACE_CONDITION_CLASS).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿条件を取得する
  def getRaceConditionRequirement
    @pastRaceResult.b(RACE_CONDITION_REQUIREMENT).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿記号を取得する
  def getRaceConditionSymbol
    @pastRaceResult.b(RACE_CONDITION_SYMBOL).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿重量を取得する
  def getRaceConditionWeight
    @pastRaceResult.b(RACE_CONDITION_WEIGHT).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿グレードを取得する
  def getRaceConditionGrade
    @pastRaceResult.b(RACE_CONDITION_GRADE).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿レース名を取得する
  def getRaceConditionRaceName
    @pastRaceResult.b(RACE_CONDITION_RACE_NAME).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿頭数を取得する
  def getRaceConditionHorseCount
    @pastRaceResult.b(RACE_CONDITION_HORSE_COUNT).force_encoding("utf-8")
  end

  #レース条件＿トラック情報＿レース名略称を取得する
  def getRaceConditionRaceNameShort
    @pastRaceResult.b(RACE_CONDITION_RACE_NAME_SHORT).force_encoding("utf-8")
  end

  #馬成績＿着順を取得する
  def getHorseRacePerformanceRanking
    @pastRaceResult.b(HORSE_RACE_PERFORMANCE_RANKING).force_encoding("utf-8")
  end

  #馬成績＿異常区分を取得する
  def getHorseRacePerformanceAbnormalClassification
    @pastRaceResult.b(HORSE_RACE_PERFORMANCE_ABNORMAL_CLASSIFICATION).force_encoding("utf-8")
  end

  #馬成績＿タイムを取得する
  def getHorseRacePerformanceTime
    @pastRaceResult.b(HORSE_RACE_PERFORMANCE_TIME).force_encoding("utf-8")
  end

  #馬成績＿斤量を取得する
  def getHorseRacePerformanceBasisWeight
    @pastRaceResult.b(HORSE_RACE_PERFORMANCE_BASIS_WEIGHT).force_encoding("utf-8")
  end

  #開催競馬場コードを取得する
  def getRaceCourseCode
    @pastRaceResult.b.slice(RACE_KEY_COURSE_CODE).force_encoding("utf-8")
  end

  #開催年を取得する
  def getYearCode
    @pastRaceResult.b(RACE_KEY_YEAR).force_encoding("utf-8")
  end

  #競馬場ごとの回を取得する
  def getTimesCode
    @pastRaceResult.b.slice(RACE_KEY_TIMES).force_encoding("utf-8")
  end

  #競馬場ごとの日目を取得する
  def getDayCode
    @pastRaceResult.b.slice(RACE_KEY_DAY).force_encoding("utf-8")
  end

  #レース番号を取得する
  def getNumberOfRace
    @pastRaceResult.b.slice(RACE_KEY_NUMBER_OF_RACE).force_encoding("utf-8")
  end

  #馬番を取得する
  def getRacePerformanceHorseNumber
    @pastRaceResult.b.slice(RACE_KEY_HORSE_NUMBER).force_encoding("utf-8")
  end

  #血統登録番号を取得する
  def getRacePerformancePedigreeRegisterCode
    @pastRaceResult.b.slice(RACE_PERFORMANCE_PEDIGREE_REGISTER_CODE).force_encoding("utf-8")
  end

  #年月日を取得する
  def getRacePerformanceDateYmd
    @pastRaceResult.b.slice(RACE_PERFORMANCE_DATE_YMD).force_encoding("utf-8")
  end

  #馬名を取得する
  #馬成績＿騎手名を取得する
  def getHorseRacePerformanceJockeyName
    @pastRaceResult.b.slice(HORSE_RACE_PERFORMANCE_JOCKEY_NAME).force_encoding("utf-8")
  end

  #馬成績＿調教師名を取得する
  def getHorseRacePerformanceTrainerName
    @pastRaceResult.b.slice(HORSE_RACE_PERFORMANCE_TRAINER_NAME).force_encoding("utf-8")
  end

  #馬成績＿確定単勝オッズを取得する
  def getHorseRacePerformanceConfirmWinOdds
    @pastRaceResult.b.slice(HORSE_RACE_PERFORMANCE_CONFIRM_WIN_ODDS).force_encoding("utf-8")
  end

  #馬成績＿確定単勝人気順位を取得する
  def getHorseRacePerformanceConfirmWinPopularRank
    @pastRaceResult.b.slice(HORSE_RACE_PERFORMANCE_CONFIRM_WIN_POPULAR_RANK).force_encoding("utf-8")
  end

  #JRDBデータ＿IDMを取得する
  def getJrdbIdm
    @pastRaceResult.b.slice(JRDB_IDM).force_encoding("utf-8")
  end

  #JRDBデータ＿素点を取得する
  def getJrdbPrimaryPoint
    @pastRaceResult.b.slice(JRDB_PRIMARY_POINT).force_encoding("utf-8")
  end

  #JRDBデータ＿馬場差を取得する
  def getJrdbRidingGroundReference
    @pastRaceResult.b.slice(JRDB_RIDING_GROUND_REFERENCE).force_encoding("utf-8")
  end

  #JRDBデータ＿ペースを取得する
  def getJrdbPace
    @pastRaceResult.b.slice(JRDB_PACE).force_encoding("utf-8")
  end

  #JRDBデータ＿出遅を取得する
  def getJrdbLagging
    @pastRaceResult.b.slice(JRDB_LAGGING).force_encoding("utf-8")
  end

  #JRDBデータ＿位置取を取得する
  def getJrdbPositionOfRace
    @pastRaceResult.b.slice(JRDB_POSITION_OF_RACE).force_encoding("utf-8")
  end

  #JRDBデータ＿不利を取得する
  def getJrdbUnfavorable
    @pastRaceResult.b.slice(JRDB_UNFAVORABLE).force_encoding("utf-8")
  end

  #JRDBデータ＿前不利を取得する
  def getJrdbUnfavorableBefore
    @pastRaceResult.b.slice(JRDB_UNFAVORABLE_BEFORE).force_encoding("utf-8")
  end

  #JRDBデータ＿中不利を取得する
  def getJrdbUnfavorableMiddle
    @pastRaceResult.b.slice(JRDB_UNFAVORABLE_MIDDLE).force_encoding("utf-8")
  end

  #JRDBデータ＿後不利を取得する
  def getJrdbUnfavorableAfter
    @pastRaceResult.b.slice(JRDB_UNFAVORABLE_AFTER).force_encoding("utf-8")
  end

  #JRDBデータ＿レースを取得する
  def getJrdbRace
    @pastRaceResult.b.slice(JRDB_RACE).force_encoding("utf-8")
  end

  #JRDBデータ＿コース取を取得する
  def getJrdbCourseRemoval
    @pastRaceResult.b.slice(JRDB_COURSE_REMOVAL).force_encoding("utf-8")
  end

  #JRDBデータ＿上昇度を取得する
  def getJrdbRisingCode
    @pastRaceResult.b.slice(JRDB_RISING_CODE).force_encoding("utf-8")
  end

  #JRDBデータ＿クラスを取得する
  def getJrdbClassCode
    @pastRaceResult.b.slice(JRDB_CLASS_CODE).force_encoding("utf-8")
  end

  #JRDBデータ＿馬体を取得する
  def getJrdbHorseBodyCode
    @pastRaceResult.b.slice(JRDB_HORSE_BODY_CODE).force_encoding("utf-8")
  end

  #JRDBデータ＿気配を取得する
  def getJrdbSignCode
    @pastRaceResult.b.slice(JRDB_SIGN_CODE).force_encoding("utf-8")
  end

  #JRDBデータ＿レースペースを取得する
  def getJrdbRacePace
    @pastRaceResult.b.slice(JRDB_RACE_PACE).force_encoding("utf-8")
  end

  #JRDBデータ＿馬ペースを取得する
  def getJrdbHorsePace
    @pastRaceResult.b.slice(JRDB_HORSE_PACE).force_encoding("utf-8")
  end

  #JRDBデータ＿テン指数を取得する
  def getJrdbTenIndex
    @pastRaceResult.b.slice(JRDB_TEN_INDEX).force_encoding("utf-8")
  end

  #JRDBデータ＿上がり指数を取得する
  def getJrdbRisingIndexCode
    @pastRaceResult.b.slice(JRDB_RISING_CODE).force_encoding("utf-8")
  end

  #JRDBデータ＿ペース指数を取得する
  def getJrdbPaceIndex
    @pastRaceResult.b.slice(JRDB_PACE_INDEX).force_encoding("utf-8")
  end

  #JRDBデータ＿レースＰ指数を取得する
  def getJrdbRacePaceIndex
    @pastRaceResult.b.slice(JRDB_RACE_PACE_INDEX).force_encoding("utf-8")
  end

  #JRDBデータ＿1(2)着馬名を取得する
  def getJrdbFirstSecondHorseName
    @pastRaceResult.b.slice(JRDB_FIRST_SECOND_HORSE_NAME).force_encoding("utf-8")
  end

  #JRDBデータ＿1(2)着タイム差を取得する
  def getJrdbFirstSecondHorseTimeReference
    @pastRaceResult.b.slice(JRDB_FIRST_SECOND_HORSE_TIME_REFERENCE).force_encoding("utf-8")
  end

  #JRDBデータ＿前３Ｆタイムを取得する
  def getJrdbBefore3fTime
    @pastRaceResult.b.slice(JRDB_BEFORE_3F_TIME).force_encoding("utf-8")
  end

  #JRDBデータ＿後３Ｆタイムを取得する
  def getJrdbAfter3fTime
    @pastRaceResult.b.slice(JRDB_AFTER_3F_TIME).force_encoding("utf-8")
  end

  #備考
  def getJrdbRemarks
    @pastRaceResult.b.slice(JRDB_REMARKS).force_encoding("utf-8")
  end
end