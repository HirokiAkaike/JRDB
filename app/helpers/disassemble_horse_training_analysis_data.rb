class DisassembleHorseTrainingAnalysisData
  RACE_KEY_COURSE_CODE = (0..2)
  RACE_KEY_YEAR = (2..2)
  RACE_KEY_TIMES = 4
  RACE_KEY_DAY = 5
  RACE_KEY_NUMBER_OF_RACE = (6..2)
  HORSE_NUMBERS = (8..2)
  TORTURE_TYPE = (10..2)
  TORTURE_COURSE_TYPE = 12
  HILL = (13..2)
  WOOD_COURSE = (15..2)
  DART_COASE = (17..2)
  TURF_COURSE = (19..2)
  POOL_TORTURE = (21..2)
  FAILURE_PRACTICE = (23..2)
  POLY_TRACK = (25..2)
  TORTURE_DISTANCE = 27
  TORTURE_EMPHASIS = 28
  ADD_SWITCHING_INDEX = (29..3)
  FINISH_INDEX = (32..3)
  TORTURE_AMOUNT_EVALUATION = 35
  INDEX_CHANGE_FINISH = 36
  TORTURE_COMMENTS = (37..40)
  COMMENTS_DATE = (77..8)
  TORTURE_EVALUATION = 85
  RESERVE = (86..8)
  NEW_LINE = (94..2)


  def initialize(horseTrainingAnalysisData)
    @horseTrainingAnalysisData = horseTrainingAnalysisData
  end

  def getRaceKeyCourseCode()
    @horseTrainingAnalysisData.b.slice(RACE_KEY_COURSE_CODE).force_encoding("utf-8")
  end

  def getRaceKeyYear()
    @horseTrainingAnalysisData.b.slice(RACE_KEY_YEAR).force_encoding("utf-8")
  end

  def getRaceKeyTimes()
    @horseTrainingAnalysisData.b.slice(RACE_KEY_TIMES).force_encoding("utf-8")
  end

  def getRaceKeyDay()
    @horseTrainingAnalysisData.b.slice(RACE_KEY_DAY).force_encoding("utf-8")
  end

  def getRaceKeyNumberOfRace()
    @horseTrainingAnalysisData.b.slice(RACE_KEY_NUMBER_OF_RACE).force_encoding("utf-8")
  end

  def getHorseNumbers()
    @horseTrainingAnalysisData.b.slice(HORSE_NUMBERS).force_encoding("utf-8")
  end

  def getTortureType()
    @horseTrainingAnalysisData.b.slice(TORTURE_TYPE).force_encoding("utf-8")
  end

  def getTortureCourseType()
    @horseTrainingAnalysisData.b.slice(TORTURE_COURSE_TYPE).force_encoding("utf-8")
  end

  def getHill()
    @horseTrainingAnalysisData.b.slice(HILL).force_encoding("utf-8")
  end

  def getWoodCourse()
    @horseTrainingAnalysisData.b.slice(WOOD_COURSE).force_encoding("utf-8")
  end

  def getDartCoase()
    @horseTrainingAnalysisData.b.slice(DART_COASE).force_encoding("utf-8")
  end

  def getTurfCourse()
    @horseTrainingAnalysisData.b.slice(TURF_COURSE).force_encoding("utf-8")
  end

  def getPoolTorture()
    @horseTrainingAnalysisData.b.slice(POOL_TORTURE).force_encoding("utf-8")
  end

  def getFailurePractice()
    @horseTrainingAnalysisData.b.slice(FAILURE_PRACTICE).force_encoding("utf-8")
  end

  def getPolyTrack()
    @horseTrainingAnalysisData.b.slice(POLY_TRACK).force_encoding("utf-8")
  end

  def getTortureDistance()
    @horseTrainingAnalysisData.b.slice(TORTURE_DISTANCE).force_encoding("utf-8")
  end

  def getTortureEmphasis()
    @horseTrainingAnalysisData.b.slice(TORTURE_EMPHASIS).force_encoding("utf-8")
  end

  def getAddSwitchingIndex()
    @horseTrainingAnalysisData.b.slice(ADD_SWITCHING_INDEX).force_encoding("utf-8")
  end

  def getFinishIndex()
    @horseTrainingAnalysisData.b.slice(FINISH_INDEX).force_encoding("utf-8")
  end

  def getTortureAmountEvaluation()
    @horseTrainingAnalysisData.b.slice(TORTURE_AMOUNT_EVALUATION).force_encoding("utf-8")
  end

  def getIndexChangeFinish()
    @horseTrainingAnalysisData.b.slice(INDEX_CHANGE_FINISH).force_encoding("utf-8")
  end

  def getTortureComments()
    @horseTrainingAnalysisData.b.slice(TORTURE_COMMENTS).force_encoding("utf-8")
  end

  def getCommentsDate()
    @horseTrainingAnalysisData.b.slice(COMMENTS_DATE).force_encoding("utf-8")
  end

  def getTortureEvaluation()
    @horseTrainingAnalysisData.b.slice(TORTURE_EVALUATION).force_encoding("utf-8")
  end

  def getReserve()
    @horseTrainingAnalysisData.b.slice(RESERVE).force_encoding("utf-8")
  end

  def getNewLine()
    @horseTrainingAnalysisData.b.slice(NEW_LINE).force_encoding("utf-8")
  end
end
