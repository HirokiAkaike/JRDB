class DisassembleHoldingRace

  HOLDING_RACE_KEY = (0..1)
  RACE_KEY_COURSE_CODE = (2..3)
  RACE_KEY_YEAR = 4
  RACE_KEY_TIMES = 5
  RACE_KEY_DAY = (6..13)
  DATE_YMD = 14
  HOLDING_CLASS = (15..16)
  DAY_OF_WEEK = (17..20)
  COURSE_NAME = 21
  WEATHER_CODE = (22..23)
  TURF_COURSE_STATE_CODE = 24
  TURF_COURSE_INSIDE_STATE = 25
  TURF_COURSE_MIDDLE_STATE = 26
  TURF_COURSE_OUTSIDE_STATE = (27..29)
  TURF_COURSE_DIFFERENCE = (30..31)
  LINEAR_COURSE_DIFFERENCE_MUST_INSIDE = (32..33)
  LINEAR_COURSE_DIFFERENCE_INSIDE = (34..35)
  LINEAR_COURSE_DIFFERENCE_MIDDLE = (36..37)
  LINEAR_COURSE_DIFFERENCE_OUTSIDE = (38..39)
  LINEAR_COURSE_DIFFERENCE_MUST_OUTSIDE = (40..41)
  DIRT_COURSE_STATE_CODE = 41
  DIRT_COURSE_INSIDE_STATE = 43
  DIRT_COURSE_MIDDLE_STATE = 44
  DIRT_COURSE_OUTSIDE_STATE = (45..47)
  DIRT_COURSE_DIFFERENCE = 48
  DATA_CLASS = (49..53)

  def initialize(holdingRace)
    @holdingRace = holdingRace
  end

  def getRaceKeyCourseCode() @holdingRace.b.slice(RACE_KEY_COURSE_CODE).force_encoding("utf-8") end
  def getRaceKeyYear() @holdingRace.b.slice(RACE_KEY_YEAR).force_encoding("utf-8") end
  def getRaceKeyTimes() @holdingRace.b.slice(RACE_KEY_TIMES).force_encoding("utf-8") end
  def getRaceKeyDay() @holdingRace.b.slice(RACE_KEY_DAY).force_encoding("utf-8") end
  def getDateYmd() @holdingRace.b.slice(DATE_YMD).force_encoding("utf-8") end
  def getHoldingClass() @holdingRace.b.slice(HOLDING_CLASS).force_encoding("utf-8") end
  def getDayOfWeek() @holdingRace.b.slice(DAY_OF_WEEK).force_encoding("utf-8") end
  def getCourseName() @holdingRace.b.slice(COURSE_NAME).force_encoding("utf-8") end
  def getWeatherCode() @holdingRace.b.slice(WEATHER_CODE).force_encoding("utf-8") end
  def getTurfCourseStateCode() @holdingRace.b.slice(TURF_COURSE_STATE_CODE).force_encoding("utf-8") end
  def getTurfCourseInsideState() @holdingRace.b.slice(TURF_COURSE_INSIDE_STATE).force_encoding("utf-8") end
  def getTurfCourseMiddleState() @holdingRace.b.slice(TURF_COURSE_MIDDLE_STATE).force_encoding("utf-8") end
  def getTurfCourseOutsideState() @holdingRace.b.slice(TURF_COURSE_OUTSIDE_STATE).force_encoding("utf-8") end
  def getTurfCourseDifference() @holdingRace.b.slice(TURF_COURSE_DIFFERENCE).force_encoding("utf-8") end
  def getLinearCourseDifferenceMustInside() @holdingRace.b.slice(LINEAR_COURSE_DIFFERENCE_MUST_INSIDE).force_encoding("utf-8") end
  def getLinearCourseDifferenceInside() @holdingRace.b.slice(LINEAR_COURSE_DIFFERENCE_INSIDE).force_encoding("utf-8") end
  def getLinearCourseDifferenceMiddle() @holdingRace.b.slice(LINEAR_COURSE_DIFFERENCE_MIDDLE).force_encoding("utf-8") end
  def getLinearCourseDifferenceOutside() @holdingRace.b.slice(LINEAR_COURSE_DIFFERENCE_OUTSIDE).force_encoding("utf-8") end
  def getLinearCourseDifferenceMustOutside() @holdingRace.b.slice(LINEAR_COURSE_DIFFERENCE_MUST_OUTSIDE).force_encoding("utf-8") end
  def getDirtCourseStateCode() @holdingRace.b.slice(DIRT_COURSE_STATE_CODE).force_encoding("utf-8") end
  def getDirtCourseInsideState() @holdingRace.b.slice(DIRT_COURSE_INSIDE_STATE).force_encoding("utf-8") end
  def getDirtCourseMiddleState() @holdingRace.b.slice(DIRT_COURSE_MIDDLE_STATE).force_encoding("utf-8") end
  def getDirtCourseOutsideState() @holdingRace.b.slice(DIRT_COURSE_OUTSIDE_STATE).force_encoding("utf-8") end
  def getDirtCourseDifference() @holdingRace.b.slice(DIRT_COURSE_DIFFERENCE).force_encoding("utf-8") end
  def getDataClass() @holdingRace.b.slice(DATA_CLASS).force_encoding("utf-8") end


end
