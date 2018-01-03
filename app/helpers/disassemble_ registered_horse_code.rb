#登録馬データ作成は一旦ペンド
class DisassembleRegisteredHorseCode
  COURSE_CODE_POSITION = (0..1)
  YEAR_CODE_POSITION = (2..3)
  TIMES_CODE_POSITION = 4
  DAY_CODE_POSITION = 5
  NUMBER_OF_RACE_POSITION = (6..7)
  HORSE_NAME_CODE_POSITION = (8..47)
  HORSE_PEDIGREE_REGISTRATION_CODE_POSITION = (47..55)
  HORSE_NAME_POSITION = (56..91)
  HORSE_GENDER_CODE_POSITION = 92
  HORSE_SYMBOL_CODE_POSITION = (93..94)
  BLINKER_CODE_POSITION = 95
  JOCKEY_NAME_POSITION = (96..107)
  BURDEN_WEIGHT_POSITION  = (108..110)
  APPRENTICE_CLASS_POSITION = 111
  TRAINER_NAME_POSITION = (113..123)
  TRAINER_BELONG_POSITION = 0
  IDM_POSITION_POSITION = 0
  RISING_DEGREE_POSITION = 0
  ROTATION_POSITION = 0
  LEG_QUALITY_POSITION = 0
  DISTANCE_APTITUDE_POSITION = 0
  DISTANCE_APTITUDE_SECOND_POSITION = 0
  TURF_APTITUDE_CODE_POSITION = 0
  DART_APTITUDE_CODE_POSITION = 0
  HEAVINESS_APTITUDE_CODE_POSITION = 0
  HOOF_CODE_POSITION = 0
  CLASS_CODE_POSITION = 0
  COAT_COLOR_CODE_POSITION = 0
  #他データリンク用キー（OTHER_DATA_LINK_KEY）
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_1_RACE_SCORE_KEY_POSITION = 0
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_2_RACE_SCORE_KEY_POSITION = 0
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_3_RACE_SCORE_KEY_POSITION = 0
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_4_RACE_SCORE_KEY_POSITION = 0
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_5_RACE_SCORE_KEY_POSITION = 0
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_1_RACE_KEY_POSITION = 0
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_2_RACE_KEY_POSITION = 0
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_3_RACE_KEY_POSITION = 0
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_4_RACE_KEY_POSITION = 0
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_5_RACE_KEY_POSITION = 0
  JOCKEY_CODE_POSITION = 0
  TRAINER_CODE_POSITION = 0
  #賞金情報
  WINNING_PRIZE_POSITION = 0
  INCOME_PRIZE_POSITION = 0
  CONDITION_CLASS_POSITION = 0

  EXERCISE_POSITION = 0
  BODY_TYPE_POSITION = 0
  BODY_TYPE_TOTAL_1_POSITION = 0
  BODY_TYPE_TOTAL_2_POSITION = 0
  BODY_TYPE_TOTAL_3_POSITION = 0
  HORSE_SPECIAL_MENTION_1_POSITION = 0
  HORSE_SPECIAL_MENTION_2_POSITION = 0
  HORSE_SPECIAL_MENTION_3_POSITION = 0
  #展開予想データ
  EXPANSION_FORECAST_DATA_TEN_INDEX_POSITION = 0
  EXPANSION_FORECAST_DATA_PACE_INDEX_POSITION = 0
  EXPANSION_FORECAST_DATA_RICING_INDEX_POSITION = 0
  EXPANSION_FORECAST_DATA_POSITION_INDEX_POSITION = 0
  HORSE_START_INDEX_POSITION = 0
  HORSE_LAGGING_RATE_POSITION = 0
  RUNNING_BEFORE_REFERENCE_POSITION = 0
  REFERENCE_RIDING_HORSE_CODE_POSITION = 0

  DATA_PARTITION_POSITION = 0
  LEADING_RANK_POSITION = 0
  RESERVE_POSITION = 0

  def initialize(raceCode)
    @raceCode = raceCode
  end

  def getCourseCodePosition
    @raceCode.slice(COURSE_CODE_POSITION).force_encoding("utf-8")
  end

  def getYearCodePosition
    @raceCode.slice(YEAR_CODE_POSITION).force_encoding("utf-8")
  end

  def getTimesCodePosition
    @raceCode.slice(TIMES_CODE_POSITION).force_encoding("utf-8")
  end

  def getDayCodePosition
    @raceCode.slice(DAY_CODE_POSITION).force_encoding("utf-8")
  end

  def getNumberOfRacePosition
    @raceCode.slice(NUMBER_OF_RACE_POSITION).force_encoding("utf-8")
  end

  def getHorseNameCodePosition
    @raceCode.slice(HORSE_NAME_CODE_POSITION).force_encoding("utf-8")
  end

  def getHorsePedigreeRegistrationCodePosition
    @raceCode.slice(HORSE_PEDIGREE_REGISTRATION_CODE_POSITION).force_encoding("utf-8")
  end

  def getHorseNamePosition
    @raceCode.slice(HORSE_NAME_POSITION).encode("UTF-8", "Shift_JIS")
  end

  def getHorseGenderCodePosition
    @raceCode.slice(HORSE_GENDER_CODE_POSITION).force_encoding("utf-8")
  end

  def getHorseSymbolCodePosition
    @raceCode.slice(HORSE_SYMBOL_CODE_POSITION).force_encoding("utf-8")
  end

  def getBlinkerCodePosition
    @raceCode.slice(BLINKER_CODE_POSITION).force_encoding("utf-8")
  end

  def getJocKeyNamePosition
    @raceCode.slice(JOCKEY_NAME_POSITION)..encode("UTF-8", "Shift_JIS")
  end

  def getBurdenWeightPosition
    @raceCode.slice(BURDEN_WEIGHT_POSITION).force_encoding("utf-8")
  end

  def getApprenticeClassPosition
    @raceCode.slice(APPRENTICE_CLASS_POSITION).force_encoding("utf-8")
  end

  def getTrainerNamePosition
    @raceCode.slice(TRAINER_NAME_POSITION).encode("UTF-8", "Shift_JIS")
  end

  def getTrainerBelongPosition
    @raceCode.slice(TRAINER_BELONG_POSITION).force_encoding("utf-8")
  end

  def getIdmPositionPosition
    @raceCode.slice(IDM_POSITION_POSITION).force_encoding("utf-8")
  end

  def getRisingDegreePosition
    @raceCode.slice(RISING_DEGREE_POSITION).force_encoding("utf-8")
  end

  def getRotationPosition
    @raceCode.slice(ROTATION_POSITION).force_encoding("utf-8")
  end

  def getLegQualityPosition
    @raceCode.slice(LEG_QUALITY_POSITION).force_encoding("utf-8")
  end

  def getDistanceAptitudePosition
    @raceCode.slice(DISTANCE_APTITUDE_POSITION).force_encoding("utf-8")
  end

  def getDistanceAptitudeSecondPosition
    @raceCode.slice(DISTANCE_APTITUDE_SECOND_POSITION).force_encoding("utf-8")
  end

  def getTurfAptitudeCodePosition
    @raceCode.slice(TURF_APTITUDE_CODE_POSITION).force_encoding("utf-8")
  end

  def getDartAptitudeCodePosition
    @raceCode.slice(DART_APTITUDE_CODE_POSITION).force_encoding("utf-8")
  end

  def getHeavinessAptitudeCodePosition
    @raceCode.slice(HEAVINESS_APTITUDE_CODE_POSITION).force_encoding("utf-8")
  end

  def getHoofCodePosition
    @raceCode.slice(HOOF_CODE_POSITION).force_encoding("utf-8")
  end

  def getClassCodePosition
    @raceCode.slice(CLASS_CODE_POSITION).force_encoding("utf-8")
  end

  def getCoatColorCodePosition
    @raceCode.slice(COAT_COLOR_CODE_POSITION).force_encoding("utf-8")
  end

  def getOtherDataLinkKeyprebiousRun_1_RaceScoreKeyPosition
    @raceCode.slice(OTHER_DATA_LINK_KEY_PREBIOUS_RUN_1_RACE_SCORE_KEY_POSITION).force_encoding("utf-8")
  end

  def getOtherDataLinkKeyprebiousRun_2_RaceScoreKeyPosition
    @raceCode.slice(OTHER_DATA_LINK_KEY_PREBIOUS_RUN_2_RACE_SCORE_KEY_POSITION).force_encoding("utf-8")
  end

  def getOtherDataLinkKeyprebiousRun_3_RaceScoreKeyPosition
    @raceCode.slice(OTHER_DATA_LINK_KEY_PREBIOUS_RUN_3_RACE_SCORE_KEY_POSITION).force_encoding("utf-8")
  end

  def getOtherDataLinkKeyprebiousRun_4_RaceScoreKeyPosition
    @raceCode.slice(OTHER_DATA_LINK_KEY_PREBIOUS_RUN_4_RACE_SCORE_KEY_POSITION).force_encoding("utf-8")
  end

  def getOtherDataLinkKeyprebiousRun_5_RaceScoreKeyPosition
    @raceCode.slice(OTHER_DATA_LINK_KEY_PREBIOUS_RUN_5_RACE_SCORE_KEY_POSITION).force_encoding("utf-8")
  end

  def getOtherDataLinkKeyprebiousRun_1_RaceKeyPosition
    @raceCode.slice(OTHER_DATA_LINK_KEY_PREBIOUS_RUN_1_RACE_KEY_POSITION).force_encoding("utf-8")
  end

  def getOtherDataLinkKeyprebiousRun_2_RaceKeyPosition
    @raceCode.slice(OTHER_DATA_LINK_KEY_PREBIOUS_RUN_2_RACE_KEY_POSITION).force_encoding("utf-8")
  end

  def getOtherDataLinkKeyprebiousRun_3_RaceKeyPosition
    @raceCode.slice(OTHER_DATA_LINK_KEY_PREBIOUS_RUN_3_RACE_KEY_POSITION).force_encoding("utf-8")
  end

  def getOtherDataLinkKeyprebiousRun_4_RaceKeyPosition
    @raceCode.slice(OTHER_DATA_LINK_KEY_PREBIOUS_RUN_4_RACE_KEY_POSITION).force_encoding("utf-8")
  end

  def getOtherDataLinkKeyprebiousRun_5_RaceKeyPosition
    @raceCode.slice(OTHER_DATA_LINK_KEY_PREBIOUS_RUN_5_RACE_KEY_POSITION).force_encoding("utf-8")
  end

  def getJocKeyCodePosition
    @raceCode.slice(JOCKEY_CODE_POSITION).force_encoding("utf-8")
  end

  def getTrainerCodePosition
    @raceCode.slice(TRAINER_CODE_POSITION).force_encoding("utf-8")
  end

  def getWinningPrizePosition
    @raceCode.slice(WINNING_PRIZE_POSITION).force_encoding("utf-8")
  end

  def getIncomePrizePosition
    @raceCode.slice(INCOME_PRIZE_POSITION).force_encoding("utf-8")
  end

  def getConditionClassPosition
    @raceCode.slice(CONDITION_CLASS_POSITION).force_encoding("utf-8")
  end

  def getExercisePosition
    @raceCode.slice(EXERCISE_POSITION).force_encoding("utf-8")
  end

  def getBodyTypePosition
    @raceCode.slice(BODY_TYPE_POSITION).force_encoding("utf-8")
  end

  def getBodyTypeTotal_1_Position
    @raceCode.slice(BODY_TYPE_TOTAL_1_POSITION).force_encoding("utf-8")
  end

  def getBodyTypeTotal_2_Position
    @raceCode.slice(BODY_TYPE_TOTAL_2_POSITION).force_encoding("utf-8")
  end

  def getBodyTypeTotal_3_Position
    @raceCode.slice(BODY_TYPE_TOTAL_3_POSITION).force_encoding("utf-8")
  end

  def getHorseSpecialMention_1_Position
    @raceCode.slice(HORSE_SPECIAL_MENTION_1_POSITION).force_encoding("utf-8")
  end

  def getHorseSpecialMention_2_Position
    @raceCode.slice(HORSE_SPECIAL_MENTION_2_POSITION).force_encoding("utf-8")
  end

  def getHorseSpecialMention_3_Position
    @raceCode.slice(HORSE_SPECIAL_MENTION_3_POSITION).force_encoding("utf-8")
  end

  def getExpansionForecastDataTenindexPosition
    @raceCode.slice(EXPANSION_FORECAST_DATA_TEN_INDEX_POSITION).force_encoding("utf-8")
  end

  def getExpansionForecastDataPaceindexPosition
    @raceCode.slice(EXPANSION_FORECAST_DATA_PACE_INDEX_POSITION).force_encoding("utf-8")
  end

  def getExpansionForecastDataRicingindexPosition
    @raceCode.slice(EXPANSION_FORECAST_DATA_RICING_INDEX_POSITION).force_encoding("utf-8")
  end

  def getExpansionForecastDataPositionindexPosition
    @raceCode.slice(EXPANSION_FORECAST_DATA_POSITION_INDEX_POSITION).force_encoding("utf-8")
  end

  def getHorseStartIndexPosition
    @raceCode.slice(HORSE_START_INDEX_POSITION).force_encoding("utf-8")
  end

  def getHorseLaggingRatePosition
    @raceCode.slice(HORSE_LAGGING_RATE_POSITION).force_encoding("utf-8")
  end

  def getRunningBeforeReferencePosition
    @raceCode.slice(RUNNING_BEFORE_REFERENCE_POSITION).force_encoding("utf-8")
  end

  def getReferenceRidingHorseCodePosition
    @raceCode.slice(REFERENCE_RIDING_HORSE_CODE_POSITION).force_encoding("utf-8")
  end

  def getDataPartitionPosition
    @raceCode.slice(DATA_PARTITION_POSITION).force_encoding("utf-8")
  end

  def getLeadingRankPosition
    @raceCode.slice(LEADING_RANK_POSITION).force_encoding("utf-8")
  end

  def getReservePosition
    @raceCode.slice(RESERVE_POSITION).force_encoding("utf-8")
  end

end


