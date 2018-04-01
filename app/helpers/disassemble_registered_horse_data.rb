class DisassembleRegisteredHorseData
  RACE_KEY_COURSE_CODE = (0..2)
  RACE_KEY_YEAR = (2..2)
  RACE_KEY_TIMES = 4
  RACE_KEY_DAY = 5
  RACE_KEY_NUMBER_OF_RACE = (6..2)
  HORSE_NAME_KEY = (8..40)
  PEDIGREE_REGISTRATION_NUMBER = (48..8)
  HORSE_NAME = (56..36)
  GENDER_CODE = 92
  HORSE_SYMBOL_CODE = (93..2)
  BRINKER = 95
  JOCKEY_NAME = (96..12)
  BURDEN_WEIGHT = (108..3)
  APPRENTICE_DIVISION = 111
  TRAINER_NAME = (112..12)
  TRAINER_AFFILIATION = (124..4)
  IDM = (128..5)
  THE_DEGREE_OF_INCREASE = 133
  ROTATION = (134..3)
  ASHISHITSU = 137
  DISTANCE_SUITABILITY = 138
  DISTANCE_APTITUDE_2 = 139
  TURF_APTITUDE_CODE = 140
  DA_APTITUDE_CODE = 141
  HEAVY_APTITUDE_CODE = 142
  HOOF_CODE = (143..2)
  CLASS_CODE = (145..2)
  HAIR_COLOR_CODE = (147..2)
  BEFORE_RUN_1_RACE_RESULTS_KEY = (149..16)
  BEFORE_RUN_2_RACE_RESULTS_KEY = (165..16)
  BEFORE_RUN_3_RACE_RESULTS_KEY = (181..16)
  BEFORE_RUN_4_RACE_RESULTS_KEY = (197..16)
  BEFORE_RUN_5_RACE_RESULTS_KEY = (213..16)
  BEFORE_RUN_1_RACE_KEY = (229..8)
  BEFORE_RUN_TWO_RACES_KEY = (237..8)
  BEFORE_RUN_THREE_RACES_KEY = (245..8)
  BEFORE_RUN_FOUR_RACES_KEY = (253..8)
  BEFORE_RUN_FIVE_RACES_KEY = (261..8)
  JOCKEY_CODE = (269..5)
  TRAINER_CODE = (274..5)
  WINNINGS = (279..6)
  SHUTOKU_PRIZE = (285..5)
  CONDITIONS_CLASS = 290
  HASHIHO = (291..8)
  FIGURE = (299..24)
  INTEGRATED_COMPREHENSIVE_1 = (323..3)
  BODY_TYPE_SECOND_OVERALL = (326..3)
  BODY_TYPE_THIRD_OVERALL = (329..3)
  HORSE_SPECIAL_1 = (332..3)
  HORSE_SPECIAL_2 = (335..3)
  HORSE_OTHERWISE_SPECIFIED_3 = (338..3)
  TEN_INDEX = (341..5)
  PACE_INDEX = (346..5)
  INCREASE_INDEX = (351..5)
  POSITION_INDEX = (356..5)
  HORSE_START_INDEX = (361..4)
  MAIDASHI_OSORITSU = (365..4)
  RUN_BEFORE_REFERENCE = (369..2)
  JOCKEY_CODE_RUN_BEFORE_REFERENCE = (371..5)
  DATA_PARTITION = 376
  RACE_RANKING = (377..3)
  RESERVE = (380..6)
  NEW_LINE = (386..2)

  def initialize(registeredHorseData)
    @registeredHorseData = registeredHorseData
  end

  def getRaceKeyCourseCode()
    @registeredHorseData.b.slice(RACE_KEY_COURSE_CODE).force_encoding("utf-8")
  end

  def getRaceKeyYear()
    @registeredHorseData.b.slice(RACE_KEY_YEAR).force_encoding("utf-8")
  end

  def getRaceKeyTimes()
    @registeredHorseData.b.slice(RACE_KEY_TIMES).force_encoding("utf-8")
  end

  def getRaceKeyDay()
    @registeredHorseData.b.slice(RACE_KEY_DAY).force_encoding("utf-8")
  end

  def getRaceKeyNumberOfRace()
    @registeredHorseData.b.slice(RACE_KEY_NUMBER_OF_RACE).force_encoding("utf-8")
  end

  def getHorseNameKey()
    @registeredHorseData.b.slice(HORSE_NAME_KEY).force_encoding("utf-8")
  end

  def getPedigreeRegistrationNumber()
    @registeredHorseData.b.slice(PEDIGREE_REGISTRATION_NUMBER).force_encoding("utf-8")
  end

  def getHorseName()
    @registeredHorseData.b.slice(HORSE_NAME).force_encoding("utf-8")
  end

  def getGenderCode()
    @registeredHorseData.b.slice(GENDER_CODE).force_encoding("utf-8")
  end

  def getHorseSymbolCode()
    @registeredHorseData.b.slice(HORSE_SYMBOL_CODE).force_encoding("utf-8")
  end

  def getBrinker()
    @registeredHorseData.b.slice(BRINKER).force_encoding("utf-8")
  end

  def getJockeyName()
    @registeredHorseData.b.slice(JOCKEY_NAME).force_encoding("utf-8")
  end

  def getBurdenWeight()
    @registeredHorseData.b.slice(BURDEN_WEIGHT).force_encoding("utf-8")
  end

  def getApprenticeDivision()
    @registeredHorseData.b.slice(APPRENTICE_DIVISION).force_encoding("utf-8")
  end

  def getTrainerName()
    @registeredHorseData.b.slice(TRAINER_NAME).force_encoding("utf-8")
  end

  def getTrainerAffiliation()
    @registeredHorseData.b.slice(TRAINER_AFFILIATION).force_encoding("utf-8")
  end

  def getIdm()
    @registeredHorseData.b.slice(IDM).force_encoding("utf-8")
  end

  def getTheDegreeOfIncrease()
    @registeredHorseData.b.slice(THE_DEGREE_OF_INCREASE).force_encoding("utf-8")
  end

  def getRotation()
    @registeredHorseData.b.slice(ROTATION).force_encoding("utf-8")
  end

  def getAshishitsu()
    @registeredHorseData.b.slice(ASHISHITSU).force_encoding("utf-8")
  end

  def getDistanceSuitability()
    @registeredHorseData.b.slice(DISTANCE_SUITABILITY).force_encoding("utf-8")
  end

  def getDistanceAptitude2()
    @registeredHorseData.b.slice(DISTANCE_APTITUDE_2).force_encoding("utf-8")
  end

  def getTurfAptitudeCode()
    @registeredHorseData.b.slice(TURF_APTITUDE_CODE).force_encoding("utf-8")
  end

  def getDaAptitudeCode()
    @registeredHorseData.b.slice(DA_APTITUDE_CODE).force_encoding("utf-8")
  end

  def getHeavyAptitudeCode()
    @registeredHorseData.b.slice(HEAVY_APTITUDE_CODE).force_encoding("utf-8")
  end

  def getHoofCode()
    @registeredHorseData.b.slice(HOOF_CODE).force_encoding("utf-8")
  end

  def getClassCode()
    @registeredHorseData.b.slice(CLASS_CODE).force_encoding("utf-8")
  end

  def getHairColorCode()
    @registeredHorseData.b.slice(HAIR_COLOR_CODE).force_encoding("utf-8")
  end

  def getBeforeRun1RaceResultsKey()
    @registeredHorseData.b.slice(BEFORE_RUN_1_RACE_RESULTS_KEY).force_encoding("utf-8")
  end

  def getBeforeRun2RaceResultsKey()
    @registeredHorseData.b.slice(BEFORE_RUN_2_RACE_RESULTS_KEY).force_encoding("utf-8")
  end

  def getBeforeRun3RaceResultsKey()
    @registeredHorseData.b.slice(BEFORE_RUN_3_RACE_RESULTS_KEY).force_encoding("utf-8")
  end

  def getBeforeRun4RaceResultsKey()
    @registeredHorseData.b.slice(BEFORE_RUN_4_RACE_RESULTS_KEY).force_encoding("utf-8")
  end

  def getBeforeRun5RaceResultsKey()
    @registeredHorseData.b.slice(BEFORE_RUN_5_RACE_RESULTS_KEY).force_encoding("utf-8")
  end

  def getBeforeRun1RaceKey()
    @registeredHorseData.b.slice(BEFORE_RUN_1_RACE_KEY).force_encoding("utf-8")
  end

  def getBeforeRunTwoRacesKey()
    @registeredHorseData.b.slice(BEFORE_RUN_TWO_RACES_KEY).force_encoding("utf-8")
  end

  def getBeforeRunThreeRacesKey()
    @registeredHorseData.b.slice(BEFORE_RUN_THREE_RACES_KEY).force_encoding("utf-8")
  end

  def getBeforeRunFourRacesKey()
    @registeredHorseData.b.slice(BEFORE_RUN_FOUR_RACES_KEY).force_encoding("utf-8")
  end

  def getBeforeRunFiveRacesKey()
    @registeredHorseData.b.slice(BEFORE_RUN_FIVE_RACES_KEY).force_encoding("utf-8")
  end

  def getJockeyCode()
    @registeredHorseData.b.slice(JOCKEY_CODE).force_encoding("utf-8")
  end

  def getTrainerCode()
    @registeredHorseData.b.slice(TRAINER_CODE).force_encoding("utf-8")
  end

  def getWinnings()
    @registeredHorseData.b.slice(WINNINGS).force_encoding("utf-8")
  end

  def getShutokuPrize()
    @registeredHorseData.b.slice(SHUTOKU_PRIZE).force_encoding("utf-8")
  end

  def getConditionsClass()
    @registeredHorseData.b.slice(CONDITIONS_CLASS).force_encoding("utf-8")
  end

  def getHashiho()
    @registeredHorseData.b.slice(HASHIHO).force_encoding("utf-8")
  end

  def getFigure()
    @registeredHorseData.b.slice(FIGURE).force_encoding("utf-8")
  end

  def getIntegratedComprehensive1()
    @registeredHorseData.b.slice(INTEGRATED_COMPREHENSIVE_1).force_encoding("utf-8")
  end

  def getBodyTypeSecondOverall()
    @registeredHorseData.b.slice(BODY_TYPE_SECOND_OVERALL).force_encoding("utf-8")
  end

  def getBodyTypeThirdOverall()
    @registeredHorseData.b.slice(BODY_TYPE_THIRD_OVERALL).force_encoding("utf-8")
  end

  def getHorseSpecial1()
    @registeredHorseData.b.slice(HORSE_SPECIAL_1).force_encoding("utf-8")
  end

  def getHorseSpecial2()
    @registeredHorseData.b.slice(HORSE_SPECIAL_2).force_encoding("utf-8")
  end

  def getHorseOtherwiseSpecified3()
    @registeredHorseData.b.slice(HORSE_OTHERWISE_SPECIFIED_3).force_encoding("utf-8")
  end

  def getTenIndex()
    @registeredHorseData.b.slice(TEN_INDEX).force_encoding("utf-8")
  end

  def getPaceIndex()
    @registeredHorseData.b.slice(PACE_INDEX).force_encoding("utf-8")
  end

  def getIncreaseIndex()
    @registeredHorseData.b.slice(INCREASE_INDEX).force_encoding("utf-8")
  end

  def getPositionIndex()
    @registeredHorseData.b.slice(POSITION_INDEX).force_encoding("utf-8")
  end

  def getHorseStartIndex()
    @registeredHorseData.b.slice(HORSE_START_INDEX).force_encoding("utf-8")
  end

  def getMaidashiOsoritsu()
    @registeredHorseData.b.slice(MAIDASHI_OSORITSU).force_encoding("utf-8")
  end

  def getRunBeforeReference()
    @registeredHorseData.b.slice(RUN_BEFORE_REFERENCE).force_encoding("utf-8")
  end

  def getJockeyCodeRunBeforeReference()
    @registeredHorseData.b.slice(JOCKEY_CODE_RUN_BEFORE_REFERENCE).force_encoding("utf-8")
  end

  def getDataPartition()
    @registeredHorseData.b.slice(DATA_PARTITION).force_encoding("utf-8")
  end

  def getRaceRanking()
    @registeredHorseData.b.slice(RACE_RANKING).force_encoding("utf-8")
  end

  def getReserve()
    @registeredHorseData.b.slice(RESERVE).force_encoding("utf-8")
  end

  def getNewLine()
    @registeredHorseData.b.slice(NEW_LINE).force_encoding("utf-8")
  end
end
