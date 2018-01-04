class DisassembleRegisteredHorse
  #レースキー
  RACE_KEY_COURSE_CODE = (0..1)
  RACE_KEY_YEAR = (2..3)
  RACE_KEY_TIMES = 4
  RACE_KEY_DAY = 5
  RACE_KEY_NUMBER_OF_RACE = (6..7)

  HORSE_NAME_CODE_POSITION = (8..47)
  HORSE_PEDIGREE_REGISTRATION_CODE_POSITION = (48..55)
  HORSE_NAME_POSITION = (56..91)
  HORSE_GENDER_CODE_POSITION = 92
  HORSE_SYMBOL_CODE_POSITION = (93..94)
  BLINKER_CODE_POSITION = 95
  JOCKEY_NAME_POSITION = (96..107)
  BURDEN_WEIGHT_POSITION = (108..110)
  APPRENTICE_CLASS_POSITION = 111
  TRAINER_NAME_POSITION = (112..123)
  TRAINER_BELONG_POSITION = (124..127)
  IDM_POSITION_POSITION = (128..132)
  RISING_DEGREE_POSITION = 133
  ROTATION_POSITION = (134..136)
  LEG_QUALITY_POSITION = 137
  DISTANCE_APTITUDE_POSITION = 138
  DISTANCE_APTITUDE_SECOND_POSITION = 139
  TURF_APTITUDE_CODE_POSITION = 140
  DART_APTITUDE_CODE_POSITION = 141
  HEAVINESS_APTITUDE_CODE_POSITION = 142
  HOOF_CODE_POSITION = 143
  CLASS_CODE_POSITION = (145..146)
  COAT_COLOR_CODE_POSITION = (147..148)
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_1_RACE_SCORE_KEY_POSITION = (149..164)
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_2_RACE_SCORE_KEY_POSITION = (165..180)
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_3_RACE_SCORE_KEY_POSITION = (181..196)
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_4_RACE_SCORE_KEY_POSITION = (197..212)
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_5_RACE_SCORE_KEY_POSITION = (213..228)
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_1_RACE_KEY_POSITION = (229..236)
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_2_RACE_KEY_POSITION = (237..244)
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_3_RACE_KEY_POSITION = (245..252)
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_4_RACE_KEY_POSITION = (253..260)
  OTHER_DATA_LINK_KEY_PREBIOUS_RUN_5_RACE_KEY_POSITION = (261..268)
  JOCKEY_CODE_POSITION = (269..273)
  TRAINER_CODE_POSITION = (274..278)
  WINNING_PRIZE_POSITION = (279..284)
  INCOME_PRIZE_POSITION = (285..289)
  CONDITION_CLASS_POSITION = 290
  EXERCISE_POSITION = (291..298)
  BODY_TYPE_POSITION = (299..322)
  BODY_TYPE_TOTAL_1_POSITION = (323..325)
  BODY_TYPE_TOTAL_2_POSITION = (326..328)
  BODY_TYPE_TOTAL_3_POSITION = (329..331)
  HORSE_SPECIAL_MENTION_1_POSITION = (332..334)
  HORSE_SPECIAL_MENTION_2_POSITION = (335..337)
  HORSE_SPECIAL_MENTION_3_POSITION = (338..340)
  EXPANSION_FORECAST_DATA_TEN_INDEX_POSITION = (341..345)
  EXPANSION_FORECAST_DATA_PACE_INDEX_POSITION = (346..350)
  EXPANSION_FORECAST_DATA_RICING_INDEX_POSITION = (351..355)
  EXPANSION_FORECAST_DATA_POSITION_INDEX_POSITION = (356..360)
  HORSE_START_INDEX_POSITION = (361..364)
  HORSE_LAGGING_RATE_POSITION = (365..368)
  RUNNING_BEFORE_REFERENCE_POSITION = (369..370)
  REFERENCE_RIDING_HORSE_CODE_POSITION = (371..375)
  DATA_PARTITION_POSITION = 376
  LEADING_RANK_POSITION = (377..379)
  RESERVE_POSITION = (380..385)

  def initialize(raceCode)
    @raceCode = raceCode
  end

  #開催競馬場コードを取得する
  def getRaceCourseCode
    @refundBetTicket.b.slice(RACE_KEY_COURSE_CODE).force_encoding("utf-8")
  end

  #開催年を取得する
  def getYearCode
    @refundBetTicket.b.slice(RACE_KEY_YEAR).force_encoding("utf-8")
  end

  #競馬場ごとの回を取得する
  def getTimesCode
    @refundBetTicket.b.slice(RACE_KEY_TIMES).force_encoding("utf-8")
  end

  #競馬場ごとの日目を取得する
  def getDayCode
    @refundBetTicket.b.slice(RACE_KEY_DAY).force_encoding("utf-8")
  end

  #レース番号を取得する
  def getNumberOfRace
    @refundBetTicket.b.slice(RACE_KEY_NUMBER_OF_RACE).force_encoding("utf-8")
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


