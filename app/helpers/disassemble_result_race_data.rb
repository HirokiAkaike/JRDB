class DisassembleResultRaceData
  RACE_KEY_COURSE_CODE = (0..2)
  RACE_KEY_YEAR = (2..2)
  RACE_KEY_TIMES = 4
  RACE_KEY_DAY = 5
  RACE_KEY_NUMBER_OF_RACE = (6..2)
  HALONG_TIME_1 = (8..3)
  HALONG_TIME_2 = (11..3)
  HALONG_TIME_3 = (14..3)
  HALONG_TIME_4 = (17..3)
  HALONG_TIME_5 = (20..3)
  HALONG_TIME_6 = (23..3)
  HALONG_TIME_7 = (26..3)
  HALONG_TIME_8 = (29..3)
  HALONG_TIME_9 = (32..3)
  HALONG_TIME_10 = (35..3)
  HALONG_TIME_11 = (38..3)
  HALONG_TIME_12 = (41..3)
  HALONG_TIME_13 = (44..3)
  HALONG_TIME_14 = (47..3)
  HALONG_TIME_15 = (50..3)
  HALONG_TIME_16 = (53..3)
  HALONG_TIME_17 = (56..3)
  HALONG_TIME_18 = (59..3)
  CORNER_1 = (62..64)
  CORNER_2 = (126..64)
  CORNER_3 = (190..64)
  CORNER_4 = (254..64)
  PACE_UP_POSITION = (318..2)
  ONE_CORNER = (320..3)
  CORNERS_2 = (323..3)
  MUKAITADASHI = (326..3)
  TRIANGULAR = (329..3)
  FOUR_CORNERS = (332..5)
  STRAIGHT_LINE = (337..5)
  RACE_COMMENTS = (342..500)
  RESERVE = (842..8)
  NEW_LINE = (850..2)

  def initialize(resultRaceData)
    @resultRaceData = resultRaceData
  end

  def getRaceKeyCourseCode()
    @resultRaceData.b.slice(RACE_KEY_COURSE_CODE).force_encoding("utf-8")
  end

  def getRaceKeyYear()
    @resultRaceData.b.slice(RACE_KEY_YEAR).force_encoding("utf-8")
  end

  def getRaceKeyTimes()
    @resultRaceData.b.slice(RACE_KEY_TIMES).force_encoding("utf-8")
  end

  def getRaceKeyDay()
    @resultRaceData.b.slice(RACE_KEY_DAY).force_encoding("utf-8")
  end

  def getRaceKeyNumberOfRace()
    @resultRaceData.b.slice(RACE_KEY_NUMBER_OF_RACE).force_encoding("utf-8")
  end

  def getHalongTime1()
    @resultRaceData.b.slice(HALONG_TIME_1).force_encoding("utf-8")
  end

  def getHalongTime2()
    @resultRaceData.b.slice(HALONG_TIME_2).force_encoding("utf-8")
  end

  def getHalongTime3()
    @resultRaceData.b.slice(HALONG_TIME_3).force_encoding("utf-8")
  end

  def getHalongTime4()
    @resultRaceData.b.slice(HALONG_TIME_4).force_encoding("utf-8")
  end

  def getHalongTime5()
    @resultRaceData.b.slice(HALONG_TIME_5).force_encoding("utf-8")
  end

  def getHalongTime6()
    @resultRaceData.b.slice(HALONG_TIME_6).force_encoding("utf-8")
  end

  def getHalongTime7()
    @resultRaceData.b.slice(HALONG_TIME_7).force_encoding("utf-8")
  end

  def getHalongTime8()
    @resultRaceData.b.slice(HALONG_TIME_8).force_encoding("utf-8")
  end

  def getHalongTime9()
    @resultRaceData.b.slice(HALONG_TIME_9).force_encoding("utf-8")
  end

  def getHalongTime10()
    @resultRaceData.b.slice(HALONG_TIME_10).force_encoding("utf-8")
  end

  def getHalongTime11()
    @resultRaceData.b.slice(HALONG_TIME_11).force_encoding("utf-8")
  end

  def getHalongTime12()
    @resultRaceData.b.slice(HALONG_TIME_12).force_encoding("utf-8")
  end

  def getHalongTime13()
    @resultRaceData.b.slice(HALONG_TIME_13).force_encoding("utf-8")
  end

  def getHalongTime14()
    @resultRaceData.b.slice(HALONG_TIME_14).force_encoding("utf-8")
  end

  def getHalongTime15()
    @resultRaceData.b.slice(HALONG_TIME_15).force_encoding("utf-8")
  end

  def getHalongTime16()
    @resultRaceData.b.slice(HALONG_TIME_16).force_encoding("utf-8")
  end

  def getHalongTime17()
    @resultRaceData.b.slice(HALONG_TIME_17).force_encoding("utf-8")
  end

  def getHalongTime18()
    @resultRaceData.b.slice(HALONG_TIME_18).force_encoding("utf-8")
  end

  def getCorner1()
    @resultRaceData.b.slice(CORNER_1).force_encoding("utf-8")
  end

  def getCorner2()
    @resultRaceData.b.slice(CORNER_2).force_encoding("utf-8")
  end

  def getCorner3()
    @resultRaceData.b.slice(CORNER_3).force_encoding("utf-8")
  end

  def getCorner4()
    @resultRaceData.b.slice(CORNER_4).force_encoding("utf-8")
  end

  def getPaceUpPosition()
    @resultRaceData.b.slice(PACE_UP_POSITION).force_encoding("utf-8")
  end

  def getOneCorner()
    @resultRaceData.b.slice(ONE_CORNER).force_encoding("utf-8")
  end

  def getCorners2()
    @resultRaceData.b.slice(CORNERS_2).force_encoding("utf-8")
  end

  def getMukaitadashi()
    @resultRaceData.b.slice(MUKAITADASHI).force_encoding("utf-8")
  end

  def getTriangular()
    @resultRaceData.b.slice(TRIANGULAR).force_encoding("utf-8")
  end

  def getFourCorners()
    @resultRaceData.b.slice(FOUR_CORNERS).force_encoding("utf-8")
  end

  def getStraightLine()
    @resultRaceData.b.slice(STRAIGHT_LINE).force_encoding("utf-8")
  end

  def getRaceComments()
    @resultRaceData.b.slice(RACE_COMMENTS).force_encoding("utf-8")
  end

  def getReserve()
    @resultRaceData.b.slice(RESERVE).force_encoding("utf-8")
  end

  def getNewLine()
    @resultRaceData.b.slice(NEW_LINE).force_encoding("utf-8")
  end
end
