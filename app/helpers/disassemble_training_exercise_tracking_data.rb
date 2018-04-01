class DisassembleTrainingExerciseTrackingData
  RACE_KEY_COURSE_CODE = (0..2)
  RACE_KEY_YEAR = (2..2)
  RACE_KEY_TIMES = 4
  RACE_KEY_DAY = 5
  RACE_KEY_NUMBER_OF_RACE = (6..2)
  HORSE_NUMBERS = (8..2)
  DAY_OF_THE_WEEK = (10..2)
  TORTURE_DATE = (12..8)
  NUMBER_OF_TIMES = 20
  TORTURE_COURSE_CODE = (21..2)
  ADD_SWITCHING_TYPE = 23
  STATE_CHASE = (24..2)
  TAKE_THE_ROLE = 26
  TORTURE_F = 27
  TEN_F = (28..3)
  INTERMEDIATE_F = (31..3)
  PUT_AWAY_F = (34..3)
  TEN_F_INDEX = (37..3)
  INTERMEDIATE_F_INDEX = (40..3)
  PUT_AWAY_F_INDEX = (43..3)
  ADD_SWITCHING_INDEX = (46..3)
  TOGETHER_WITH_THE_RESULTS = 49
  ADD_SWITCHING_TYPE = 50
  AGE = (51..2)
  CLASS = (53..2)
  RESERVE = (55..7)
  NEW_LINE = (62..2)

  def initialize(trainingExerciseTrackingData)
    @trainingExerciseTrackingData = trainingExerciseTrackingData
  end

  def getRaceKeyCourseCode()
    @trainingExerciseTrackingData.b.slice(RACE_KEY_COURSE_CODE).force_encoding("utf-8")
  end

  def getRaceKeyYear()
    @trainingExerciseTrackingData.b.slice(RACE_KEY_YEAR).force_encoding("utf-8")
  end

  def getRaceKeyTimes()
    @trainingExerciseTrackingData.b.slice(RACE_KEY_TIMES).force_encoding("utf-8")
  end

  def getRaceKeyDay()
    @trainingExerciseTrackingData.b.slice(RACE_KEY_DAY).force_encoding("utf-8")
  end

  def getRaceKeyNumberOfRace()
    @trainingExerciseTrackingData.b.slice(RACE_KEY_NUMBER_OF_RACE).force_encoding("utf-8")
  end

  def getHorseNumbers()
    @trainingExerciseTrackingData.b.slice(HORSE_NUMBERS).force_encoding("utf-8")
  end

  def getDayOfTheWeek()
    @trainingExerciseTrackingData.b.slice(DAY_OF_THE_WEEK).force_encoding("utf-8")
  end

  def getTortureDate()
    @trainingExerciseTrackingData.b.slice(TORTURE_DATE).force_encoding("utf-8")
  end

  def getNumberOfTimes()
    @trainingExerciseTrackingData.b.slice(NUMBER_OF_TIMES).force_encoding("utf-8")
  end

  def getTortureCourseCode()
    @trainingExerciseTrackingData.b.slice(TORTURE_COURSE_CODE).force_encoding("utf-8")
  end

  def getAddSwitchingType()
    @trainingExerciseTrackingData.b.slice(ADD_SWITCHING_TYPE).force_encoding("utf-8")
  end

  def getStateChase()
    @trainingExerciseTrackingData.b.slice(STATE_CHASE).force_encoding("utf-8")
  end

  def getTakeTheRole()
    @trainingExerciseTrackingData.b.slice(TAKE_THE_ROLE).force_encoding("utf-8")
  end

  def getTortureF()
    @trainingExerciseTrackingData.b.slice(TORTURE_F).force_encoding("utf-8")
  end

  def getTenF()
    @trainingExerciseTrackingData.b.slice(TEN_F).force_encoding("utf-8")
  end

  def getIntermediateF()
    @trainingExerciseTrackingData.b.slice(INTERMEDIATE_F).force_encoding("utf-8")
  end

  def getPutAwayF()
    @trainingExerciseTrackingData.b.slice(PUT_AWAY_F).force_encoding("utf-8")
  end

  def getTenFIndex()
    @trainingExerciseTrackingData.b.slice(TEN_F_INDEX).force_encoding("utf-8")
  end

  def getIntermediateFIndex()
    @trainingExerciseTrackingData.b.slice(INTERMEDIATE_F_INDEX).force_encoding("utf-8")
  end

  def getPutAwayFIndex()
    @trainingExerciseTrackingData.b.slice(PUT_AWAY_F_INDEX).force_encoding("utf-8")
  end

  def getAddSwitchingIndex()
    @trainingExerciseTrackingData.b.slice(ADD_SWITCHING_INDEX).force_encoding("utf-8")
  end

  def getTogetherWithTheResults()
    @trainingExerciseTrackingData.b.slice(TOGETHER_WITH_THE_RESULTS).force_encoding("utf-8")
  end

  def getAddSwitchingType()
    @trainingExerciseTrackingData.b.slice(ADD_SWITCHING_TYPE).force_encoding("utf-8")
  end

  def getAge()
    @trainingExerciseTrackingData.b.slice(AGE).force_encoding("utf-8")
  end

  def getClass()
    @trainingExerciseTrackingData.b.slice(CLASS).force_encoding("utf-8")
  end

  def getReserve()
    @trainingExerciseTrackingData.b.slice(RESERVE).force_encoding("utf-8")
  end

  def getNewLine()
    @trainingExerciseTrackingData.b.slice(NEW_LINE).force_encoding("utf-8")
  end

end
