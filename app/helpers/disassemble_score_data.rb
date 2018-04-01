class DisassembleScoreData
  RACE_KEY_COURSE_CODE = (0..2)
  RACE_KEY_YEAR = (2..2)
  RACE_KEY_TIMES = 4
  RACE_KEY_DAY = 5
  RACE_KEY_NUMBER_OF_RACE = (6..2)
  HORSE_NUMBERS = (8..2)
  PEDIGREE_REGISTRATION_NUMBER = (10..8)
  DATE = (18..8)
  HORSE_NAME = (26..36)
  DISTANCE = (62..4)
  TURF_DART_FAULT_CODE = 66
  RIGHT_AND_LEFT = 67
  INSIDE_AND_OUTSIDE = 68
  BABA_STATE = (69..2)
  KIND = (71..2)
  CONDITIONS = (73..2)
  SYMBOL = (75..3)
  WEIGHT = 78
  GRADE = 79
  RACE_NAME = (80..50)
  HEAD_COUNT = (130..2)
  RACE_NAME_ABBREVIATION = (132..8)
  ORDER_OF_FINISH = (140..2)
  THE_FAILURE_DIVISION = 142
  TIME = (143..4)
  BASIS_WEIGHT = (147..3)
  JOCKEY_NAME = (150..12)
  TRAINER_NAME = (162..12)
  FIXED_WIN_ODDS = (174..6)
  FINALIZED_WIN_POPULARITY_RANK = (180..2)
  IDM = (182..3)
  RAW_SCORE = (185..3)
  BABA_DIFFERENCE = (188..3)
  PACE = (191..3)
  LATE = (194..3)
  TAKEN_POSITION = (197..3)
  UNFAVORABLE = (200..3)
  DISADVANTAGE_BEFORE = (203..3)
  MEDIUM_DISADVANTAGE = (206..3)
  REAR_DISADVANTAGE = (209..3)
  RACE = (212..3)
  COURSE_UP = 215
  THE_DEGREE_OF_INCREASE_CODE = 216
  CLASS_CODE = (217..2)
  HORSE_BODY_CODE = 219
  SIGN_CODE = 220
  RACE_PACE = 221
  HORSE_PACE = 222
  TEN_INDEX = (223..5)
  INCREASE_INDEX = (228..5)
  PACE_INDEX = (233..5)
  RACE_P_INDEX = (238..5)
  CHAKUBAMEI_1_2 = (243..12)
  WEARING_TIME_DIFFERENCE_1_2 = (255..3)
  BEFORE_3F_TIME = (258..3)
  POST_3F_TIME = (261..3)
  REMARKS = (264..24)
  RESERVE_JRDB = (288..2)
  CONFIRM_MULTIPLE_WINS_ODDS_UNDER = (290..6)
  TEN_AT_WIN_ODDS = (296..6)
  TEN_AT_FUKUSHO_ODDS = (302..6)
  CORNER_RANK_1 = (308..2)
  CORNER_RANK_2 = (310..2)
  CORNER_RANK_3 = (312..2)
  CORNER_RANK_4 = (314..2)
  BEFORE_3F_TOP_DIFFERENCE = (316..3)
  REAR_3F_TOP_DIFFERENCE = (319..3)
  JOCKEY_CODE = (322..5)
  TRAINER_CODE = (327..5)
  HORSE_BODY_WEIGHT = (332..3)
  HORSE_BODY_WEIGHT_INCREASE_OR_DECREASE = (335..3)
  WEATHER_CODE = 338
  COURSE = 339
  RACE_LEG_QUALITY = 340
  WIN = (341..7)
  MULTIPLE_WINS = (348..7)
  THIS_PRIZE = (355..5)
  SHUTOKU_PRIZE = (360..5)
  RACE_PACE_FLOW = (365..2)
  HORSE_PACE_FLOW = (367..2)
  FOUR_CORNERS_COURSE_UP = 369
  RESERVE = (370..4)
  NEW_LINE = (374..2)

  def initialize(scoreData)
    @scoreData = scoreData
  end

  def getRaceKeyCourseCode()
    @scoreData.b.slice(RACE_KEY_COURSE_CODE).force_encoding("utf-8")
  end

  def getRaceKeyYear()
    @scoreData.b.slice(RACE_KEY_YEAR).force_encoding("utf-8")
  end

  def getRaceKeyTimes()
    @scoreData.b.slice(RACE_KEY_TIMES).force_encoding("utf-8")
  end

  def getRaceKeyDay()
    @scoreData.b.slice(RACE_KEY_DAY).force_encoding("utf-8")
  end

  def getRaceKeyNumberOfRace()
    @scoreData.b.slice(RACE_KEY_NUMBER_OF_RACE).force_encoding("utf-8")
  end

  def getHorseNumbers()
    @scoreData.b.slice(HORSE_NUMBERS).force_encoding("utf-8")
  end

  def getPedigreeRegistrationNumber()
    @scoreData.b.slice(PEDIGREE_REGISTRATION_NUMBER).force_encoding("utf-8")
  end

  def getDate()
    @scoreData.b.slice(DATE).force_encoding("utf-8")
  end

  def getHorseName()
    @scoreData.b.slice(HORSE_NAME).force_encoding("utf-8")
  end

  def getDistance()
    @scoreData.b.slice(DISTANCE).force_encoding("utf-8")
  end

  def getTurfDartFaultCode()
    @scoreData.b.slice(TURF_DART_FAULT_CODE).force_encoding("utf-8")
  end

  def getRightAndLeft()
    @scoreData.b.slice(RIGHT_AND_LEFT).force_encoding("utf-8")
  end

  def getInsideAndOutside()
    @scoreData.b.slice(INSIDE_AND_OUTSIDE).force_encoding("utf-8")
  end

  def getBabaState()
    @scoreData.b.slice(BABA_STATE).force_encoding("utf-8")
  end

  def getKind()
    @scoreData.b.slice(KIND).force_encoding("utf-8")
  end

  def getConditions()
    @scoreData.b.slice(CONDITIONS).force_encoding("utf-8")
  end

  def getSymbol()
    @scoreData.b.slice(SYMBOL).force_encoding("utf-8")
  end

  def getWeight()
    @scoreData.b.slice(WEIGHT).force_encoding("utf-8")
  end

  def getGrade()
    @scoreData.b.slice(GRADE).force_encoding("utf-8")
  end

  def getRaceName()
    @scoreData.b.slice(RACE_NAME).force_encoding("utf-8")
  end

  def getHeadCount()
    @scoreData.b.slice(HEAD_COUNT).force_encoding("utf-8")
  end

  def getRaceNameAbbreviation()
    @scoreData.b.slice(RACE_NAME_ABBREVIATION).force_encoding("utf-8")
  end

  def getOrderOfFinish()
    @scoreData.b.slice(ORDER_OF_FINISH).force_encoding("utf-8")
  end

  def getTheFailureDivision()
    @scoreData.b.slice(THE_FAILURE_DIVISION).force_encoding("utf-8")
  end

  def getTime()
    @scoreData.b.slice(TIME).force_encoding("utf-8")
  end

  def getBasisWeight()
    @scoreData.b.slice(BASIS_WEIGHT).force_encoding("utf-8")
  end

  def getJockeyName()
    @scoreData.b.slice(JOCKEY_NAME).force_encoding("utf-8")
  end

  def getTrainerName()
    @scoreData.b.slice(TRAINER_NAME).force_encoding("utf-8")
  end

  def getFixedWinOdds()
    @scoreData.b.slice(FIXED_WIN_ODDS).force_encoding("utf-8")
  end

  def getFinalizedWinPopularityRank()
    @scoreData.b.slice(FINALIZED_WIN_POPULARITY_RANK).force_encoding("utf-8")
  end

  def getIdm()
    @scoreData.b.slice(IDM).force_encoding("utf-8")
  end

  def getRawScore()
    @scoreData.b.slice(RAW_SCORE).force_encoding("utf-8")
  end

  def getBabaDifference()
    @scoreData.b.slice(BABA_DIFFERENCE).force_encoding("utf-8")
  end

  def getPace()
    @scoreData.b.slice(PACE).force_encoding("utf-8")
  end

  def getLate()
    @scoreData.b.slice(LATE).force_encoding("utf-8")
  end

  def getTakenPosition()
    @scoreData.b.slice(TAKEN_POSITION).force_encoding("utf-8")
  end

  def getUnfavorable()
    @scoreData.b.slice(UNFAVORABLE).force_encoding("utf-8")
  end

  def getDisadvantageBefore()
    @scoreData.b.slice(DISADVANTAGE_BEFORE).force_encoding("utf-8")
  end

  def getMediumDisadvantage()
    @scoreData.b.slice(MEDIUM_DISADVANTAGE).force_encoding("utf-8")
  end

  def getRearDisadvantage()
    @scoreData.b.slice(REAR_DISADVANTAGE).force_encoding("utf-8")
  end

  def getRace()
    @scoreData.b.slice(RACE).force_encoding("utf-8")
  end

  def getCourseUp()
    @scoreData.b.slice(COURSE_UP).force_encoding("utf-8")
  end

  def getTheDegreeOfIncreaseCode()
    @scoreData.b.slice(THE_DEGREE_OF_INCREASE_CODE).force_encoding("utf-8")
  end

  def getClassCode()
    @scoreData.b.slice(CLASS_CODE).force_encoding("utf-8")
  end

  def getHorseBodyCode()
    @scoreData.b.slice(HORSE_BODY_CODE).force_encoding("utf-8")
  end

  def getSignCode()
    @scoreData.b.slice(SIGN_CODE).force_encoding("utf-8")
  end

  def getRacePace()
    @scoreData.b.slice(RACE_PACE).force_encoding("utf-8")
  end

  def getHorsePace()
    @scoreData.b.slice(HORSE_PACE).force_encoding("utf-8")
  end

  def getTenIndex()
    @scoreData.b.slice(TEN_INDEX).force_encoding("utf-8")
  end

  def getIncreaseIndex()
    @scoreData.b.slice(INCREASE_INDEX).force_encoding("utf-8")
  end

  def getPaceIndex()
    @scoreData.b.slice(PACE_INDEX).force_encoding("utf-8")
  end

  def getRacePIndex()
    @scoreData.b.slice(RACE_P_INDEX).force_encoding("utf-8")
  end

  def getChakubamei12()
    @scoreData.b.slice(CHAKUBAMEI_1_2).force_encoding("utf-8")
  end

  def getWearingTimeDifference12()
    @scoreData.b.slice(WEARING_TIME_DIFFERENCE_1_2).force_encoding("utf-8")
  end

  def getBefore3FTime()
    @scoreData.b.slice(BEFORE_3F_TIME).force_encoding("utf-8")
  end

  def getPost3FTime()
    @scoreData.b.slice(POST_3F_TIME).force_encoding("utf-8")
  end

  def getRemarks()
    @scoreData.b.slice(REMARKS).force_encoding("utf-8")
  end

  def getReserveJrdb()
    @scoreData.b.slice(RESERVE_JRDB).force_encoding("utf-8")
  end

  def getConfirmMultipleWinsOddsUnder()
    @scoreData.b.slice(CONFIRM_MULTIPLE_WINS_ODDS_UNDER).force_encoding("utf-8")
  end

  def getTenAtWinOdds()
    @scoreData.b.slice(TEN_AT_WIN_ODDS).force_encoding("utf-8")
  end

  def getTenAtFukushoOdds()
    @scoreData.b.slice(TEN_AT_FUKUSHO_ODDS).force_encoding("utf-8")
  end

  def getCornerRank1()
    @scoreData.b.slice(CORNER_RANK_1).force_encoding("utf-8")
  end

  def getCornerRank2()
    @scoreData.b.slice(CORNER_RANK_2).force_encoding("utf-8")
  end

  def getCornerRank3()
    @scoreData.b.slice(CORNER_RANK_3).force_encoding("utf-8")
  end

  def getCornerRank4()
    @scoreData.b.slice(CORNER_RANK_4).force_encoding("utf-8")
  end

  def getBefore3FTopDifference()
    @scoreData.b.slice(BEFORE_3F_TOP_DIFFERENCE).force_encoding("utf-8")
  end

  def getRear3FTopDifference()
    @scoreData.b.slice(REAR_3F_TOP_DIFFERENCE).force_encoding("utf-8")
  end

  def getJockeyCode()
    @scoreData.b.slice(JOCKEY_CODE).force_encoding("utf-8")
  end

  def getTrainerCode()
    @scoreData.b.slice(TRAINER_CODE).force_encoding("utf-8")
  end

  def getHorseBodyWeight()
    @scoreData.b.slice(HORSE_BODY_WEIGHT).force_encoding("utf-8")
  end

  def getHorseBodyWeightIncreaseOrDecrease()
    @scoreData.b.slice(HORSE_BODY_WEIGHT_INCREASE_OR_DECREASE).force_encoding("utf-8")
  end

  def getWeatherCode()
    @scoreData.b.slice(WEATHER_CODE).force_encoding("utf-8")
  end

  def getCourse()
    @scoreData.b.slice(COURSE).force_encoding("utf-8")
  end

  def getRaceLegQuality()
    @scoreData.b.slice(RACE_LEG_QUALITY).force_encoding("utf-8")
  end

  def getWin()
    @scoreData.b.slice(WIN).force_encoding("utf-8")
  end

  def getMultipleWins()
    @scoreData.b.slice(MULTIPLE_WINS).force_encoding("utf-8")
  end

  def getThisPrize()
    @scoreData.b.slice(THIS_PRIZE).force_encoding("utf-8")
  end

  def getShutokuPrize()
    @scoreData.b.slice(SHUTOKU_PRIZE).force_encoding("utf-8")
  end

  def getRacePaceFlow()
    @scoreData.b.slice(RACE_PACE_FLOW).force_encoding("utf-8")
  end

  def getHorsePaceFlow()
    @scoreData.b.slice(HORSE_PACE_FLOW).force_encoding("utf-8")
  end

  def getFourCornersCourseUp()
    @scoreData.b.slice(FOUR_CORNERS_COURSE_UP).force_encoding("utf-8")
  end

  def getReserve()
    @scoreData.b.slice(RESERVE).force_encoding("utf-8")
  end

  def getNewLine()
    @scoreData.b.slice(NEW_LINE).force_encoding("utf-8")
  end
end
