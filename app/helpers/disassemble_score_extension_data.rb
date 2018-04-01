class DisassembleScoreExtensionData
  RACE_KEY_COURSE_CODE = (0..2)
  RACE_KEY_YEAR = (2..2)
  RACE_KEY_TIMES = 4
  RACE_KEY_DAY = 5
  RACE_KEY_NUMBER_OF_RACE = (6..2)
  PEDIGREE_REGISTRATION_NUMBER = (10..8)
  DATE = (18..8)
  SPECIAL_CODE_1 = (26..3)
  SPECIAL_CODE_2 = (29..3)
  SPECIAL_CODE_3 = (32..3)
  SPECIAL_CODE_4 = (35..3)
  SPECIAL_CODE_5 = (38..3)
  SPECIAL_CODE_6 = (41..3)
  HARNESS_CODE_1 = (44..3)
  HARNESS_CODE_2 = (47..3)
  HARNESS_CODE_3 = (50..3)
  HARNESS_CODE_4 = (53..3)
  HARNESS_CODE_5 = (56..3)
  HARNESS_CODE_6 = (59..3)
  HARNESS_CODE_7 = (62..3)
  HARNESS_CODE_8 = (65..3)
  OVERALL_1 = (68..3)
  OVERALL_2 = (71..3)
  OVERALL_3 = (74..3)
  LEFT_FRONT_1 = (77..3)
  LEFT_FRONT_2 = (80..3)
  LEFT_FRONT_3 = (83..3)
  RIGHT_FRONT_1 = (86..3)
  RIGHT_FRONT_2 = (89..3)
  RIGHT_FRONT_3 = (92..3)
  LEFT_AFTER_1 = (95..3)
  LEFT_AFTER_2 = (98..3)
  LEFT_AFTER_3 = (101..3)
  RIGHT_AFTER_1 = (104..3)
  RIGHT_AFTER_2 = (107..3)
  RIGHT_AFTER_3 = (110..3)
  PADDOCK_COMMENTS = (113..40)
  ASHIMOTO_COMMENT = (153..40)
  HARNESS_OTHER_COMMENTS = (193..40)
  RACE_COMMENTS = (233..40)
  HAMI = (273..3)
  VANTAGE = (276..3)
  HORSESHOES = (279..3)
  HOOF_STATE = (282..3)
  ZOE = (285..3)
  HONEKOBU = (288..3)
  RESERVE = (291..11)
  NEW_LINE = (302..2)

  def initialize(scoreExtensionData)
    @scoreExtensionData = scoreExtensionData
  end

  def getRaceKeyCourseCode()
    @scoreExtensionData.b.slice(RACE_KEY_COURSE_CODE).force_encoding("utf-8")
  end

  def getRaceKeyYear()
    @scoreExtensionData.b.slice(RACE_KEY_YEAR).force_encoding("utf-8")
  end

  def getRaceKeyTimes()
    @scoreExtensionData.b.slice(RACE_KEY_TIMES).force_encoding("utf-8")
  end

  def getRaceKeyDay()
    @scoreExtensionData.b.slice(RACE_KEY_DAY).force_encoding("utf-8")
  end

  def getRaceKeyNumberOfRace()
    @scoreExtensionData.b.slice(RACE_KEY_NUMBER_OF_RACE).force_encoding("utf-8")
  end

  def getPedigreeRegistrationNumber()
    @scoreExtensionData.b.slice(PEDIGREE_REGISTRATION_NUMBER).force_encoding("utf-8")
  end

  def getDate()
    @scoreExtensionData.b.slice(DATE).force_encoding("utf-8")
  end

  def getSpecialCode1()
    @scoreExtensionData.b.slice(SPECIAL_CODE_1).force_encoding("utf-8")
  end

  def getSpecialCode2()
    @scoreExtensionData.b.slice(SPECIAL_CODE_2).force_encoding("utf-8")
  end

  def getSpecialCode3()
    @scoreExtensionData.b.slice(SPECIAL_CODE_3).force_encoding("utf-8")
  end

  def getSpecialCode4()
    @scoreExtensionData.b.slice(SPECIAL_CODE_4).force_encoding("utf-8")
  end

  def getSpecialCode5()
    @scoreExtensionData.b.slice(SPECIAL_CODE_5).force_encoding("utf-8")
  end

  def getSpecialCode6()
    @scoreExtensionData.b.slice(SPECIAL_CODE_6).force_encoding("utf-8")
  end

  def getHarnessCode1()
    @scoreExtensionData.b.slice(HARNESS_CODE_1).force_encoding("utf-8")
  end

  def getHarnessCode2()
    @scoreExtensionData.b.slice(HARNESS_CODE_2).force_encoding("utf-8")
  end

  def getHarnessCode3()
    @scoreExtensionData.b.slice(HARNESS_CODE_3).force_encoding("utf-8")
  end

  def getHarnessCode4()
    @scoreExtensionData.b.slice(HARNESS_CODE_4).force_encoding("utf-8")
  end

  def getHarnessCode5()
    @scoreExtensionData.b.slice(HARNESS_CODE_5).force_encoding("utf-8")
  end

  def getHarnessCode6()
    @scoreExtensionData.b.slice(HARNESS_CODE_6).force_encoding("utf-8")
  end

  def getHarnessCode7()
    @scoreExtensionData.b.slice(HARNESS_CODE_7).force_encoding("utf-8")
  end

  def getHarnessCode8()
    @scoreExtensionData.b.slice(HARNESS_CODE_8).force_encoding("utf-8")
  end

  def getOverall1()
    @scoreExtensionData.b.slice(OVERALL_1).force_encoding("utf-8")
  end

  def getOverall2()
    @scoreExtensionData.b.slice(OVERALL_2).force_encoding("utf-8")
  end

  def getOverall3()
    @scoreExtensionData.b.slice(OVERALL_3).force_encoding("utf-8")
  end

  def getLeftFront1()
    @scoreExtensionData.b.slice(LEFT_FRONT_1).force_encoding("utf-8")
  end

  def getLeftFront2()
    @scoreExtensionData.b.slice(LEFT_FRONT_2).force_encoding("utf-8")
  end

  def getLeftFront3()
    @scoreExtensionData.b.slice(LEFT_FRONT_3).force_encoding("utf-8")
  end

  def getRightFront1()
    @scoreExtensionData.b.slice(RIGHT_FRONT_1).force_encoding("utf-8")
  end

  def getRightFront2()
    @scoreExtensionData.b.slice(RIGHT_FRONT_2).force_encoding("utf-8")
  end

  def getRightFront3()
    @scoreExtensionData.b.slice(RIGHT_FRONT_3).force_encoding("utf-8")
  end

  def getLeftAfter1()
    @scoreExtensionData.b.slice(LEFT_AFTER_1).force_encoding("utf-8")
  end

  def getLeftAfter2()
    @scoreExtensionData.b.slice(LEFT_AFTER_2).force_encoding("utf-8")
  end

  def getLeftAfter3()
    @scoreExtensionData.b.slice(LEFT_AFTER_3).force_encoding("utf-8")
  end

  def getRightAfter1()
    @scoreExtensionData.b.slice(RIGHT_AFTER_1).force_encoding("utf-8")
  end

  def getRightAfter2()
    @scoreExtensionData.b.slice(RIGHT_AFTER_2).force_encoding("utf-8")
  end

  def getRightAfter3()
    @scoreExtensionData.b.slice(RIGHT_AFTER_3).force_encoding("utf-8")
  end

  def getPaddockComments()
    @scoreExtensionData.b.slice(PADDOCK_COMMENTS).force_encoding("utf-8")
  end

  def getAshimotoComment()
    @scoreExtensionData.b.slice(ASHIMOTO_COMMENT).force_encoding("utf-8")
  end

  def getHarnessOtherComments()
    @scoreExtensionData.b.slice(HARNESS_OTHER_COMMENTS).force_encoding("utf-8")
  end

  def getRaceComments()
    @scoreExtensionData.b.slice(RACE_COMMENTS).force_encoding("utf-8")
  end

  def getHami()
    @scoreExtensionData.b.slice(HAMI).force_encoding("utf-8")
  end

  def getVantage()
    @scoreExtensionData.b.slice(VANTAGE).force_encoding("utf-8")
  end

  def getHorseshoes()
    @scoreExtensionData.b.slice(HORSESHOES).force_encoding("utf-8")
  end

  def getHoofState()
    @scoreExtensionData.b.slice(HOOF_STATE).force_encoding("utf-8")
  end

  def getZoe()
    @scoreExtensionData.b.slice(ZOE).force_encoding("utf-8")
  end

  def getHonekobu()
    @scoreExtensionData.b.slice(HONEKOBU).force_encoding("utf-8")
  end

  def getReserve()
    @scoreExtensionData.b.slice(RESERVE).force_encoding("utf-8")
  end

  def getNewLine()
    @scoreExtensionData.b.slice(NEW_LINE).force_encoding("utf-8")
  end
end
