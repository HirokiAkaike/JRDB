class DisassembleBeforeRacing

  Race_Key_Course_Code = (0..1)
  Race_Key_Year = (2..3)
  Race_Key_Times = 4
  Race_Key_Day = 5
  Race_Key_Number_Of_Race = (6..7)
  Race_Key_Horse_Number = (8..9)
  Race_Performance_Pedigree_Register_Code = (10..17)
  Race_Performance_Date_Ymd = (18..25)
  Race_Performance_Horse_Name = (26..61)
  Race_Condition_Distance = (62..65)
  Truck_Turf_Dirt_Fault_Code = 66
  Truck_Right_Or_Left = 67
  Truck_Inside_Or_Outside = 68
  Race_Condition_Riding_Ground_Condition = (69..70)
  Race_Condition_Class = (71..72)
  Race_Condition_Requirement = (73..74)
  Race_Condition_Symbol = (75..77)
  Race_Condition_Weight = 78
  Race_Condition_Grade = 79
  Race_Condition_Race_Name = (80..129)
  Race_Condition_Horse_Count = (130..131)
  Race_Condition_Race_Name_Short = (132..139)
  Horse_Race_Performance_Ranking = (140..141)
  Horse_Race_Performance_Abnormal_Classification = 142
  Horse_Race_Performance_Time = (143..146)
  Horse_Race_Performance_Basis_Weight = (147..149)
  Horse_Race_Performance_Jockey_Name = (150..161)
  Horse_Race_Performance_Trainer_Name = (162..173)
  Horse_Race_Performance_Confirm_Win_Odds = (174..179)
  Horse_Race_Performance_Confirm_Win_Popular_Rank = (180..181)
  Jrdb_Idm = (182..184)
  Jrdb_Primary_Point = (185..187)
  Jrdb_Riding_Ground_Reference = (188..190)
  Jrdb_Pace = (191..193)
  Jrdb_Lagging = (194..196)
  Jrdb_Position_Of_Race = (197..199)
  Jrdb_Unfavorable = (200..202)
  Jrdb_Unfavorable_Before = (203..205)
  Jrdb_Unfavorable_Middle = (206..208)
  Jrdb_Unfavorable_After = (209..211)
  Jrdb_Race = (212..214)
  Jrdb_Course_Removal = 215
  Jrdb_Rising_Code = 216
  Jrdb_Class_Code = (217..218)
  Jrdb_Horse_Body_Code = 219
  Jrdb_Sign_Code = 220
  Jrdb_Race_Pace = 221
  Jrdb_Horse_Pace = 222
  Jrdb_Ten_Index = (223..227)
  Jrdb_Rising_Index_Code = (228..232)
  Jrdb_Pace_Index = (233..237)
  Jrdb_Race_Pace_Index = (238..242)
  Jrdb_First_Second_Horse_Name = (243..254)
  Jrdb_First_Second_Horse_Time_Reference = (255..257)
  Jrdb_Before_3F_Time = (258..260)
  Jrdb_After_3F_Time = (261..263)
  Jrdb_Remarks = (264..287)
  Reserve = (288..289)
  Definitive_Multiple_Win_Odds_Under = (290..295)
  Ten_Clock_Win_Odds = (296..301)
  Ten_Clock_Show_Odds = (302..307)
  Corner_Order_1 = (308..309)
  Corner_Order_2 = (310..311)
  Corner_Order_3 = (312..313)
  Corner_Order_4 = (314..315)
  First_Difference_Before_3F = (316..318)
  First_Difference_After_3F = (319..321)
  Jockey_Code = (322..326)
  Trainer_Code = (327..331)
  Horse_Weight = (332..334)
  Horse_Weight_Gain = (335..337)
  Weather_Code = 338
  Course = 339
  Race_Leg_Quality = 340
  Win = (341..347)
  Show = (348..354)
  Prize_Money = (355..359)
  Income_Prize = (360..364)
  Race_Pace_Flow = (365..366)
  Horse_Pace_Flow = (367..368)
  Four_Angles_Courses_Collecting = 369

  def initialize(before_racing)
    @before_racing = before_racing
  end

  def getRaceKeyCourseCode() @before_racing.b.slice(Race_Key_Course_Code).force_encoding("utf-8") end
  def getRaceKeyYear() @before_racing.b.slice(Race_Key_Year).force_encoding("utf-8") end
  def getRaceKeyTimes() @before_racing.b.slice(Race_Key_Times).force_encoding("utf-8") end
  def getRaceKeyDay() @before_racing.b.slice(Race_Key_Day).force_encoding("utf-8") end
  def getRaceKeyNumberOfRace() @before_racing.b.slice(Race_Key_Number_Of_Race).force_encoding("utf-8") end
  def getRaceKeyHorseNumber() @before_racing.b.slice(Race_Key_Horse_Number).force_encoding("utf-8") end
  def getRacePerformancePedigreeRegisterCode() @before_racing.b.slice(Race_Performance_Pedigree_Register_Code).force_encoding("utf-8") end
  def getRacePerformanceDateYmd() @before_racing.b.slice(Race_Performance_Date_Ymd).force_encoding("utf-8") end
  def getRacePerformanceHorseName() @before_racing.b.slice(Race_Performance_Horse_Name).force_encoding("utf-8") end
  def getRaceConditionDistance() @before_racing.b.slice(Race_Condition_Distance).force_encoding("utf-8") end
  def getTruckTurfDirtFaultCode() @before_racing.b.slice(Truck_Turf_Dirt_Fault_Code).force_encoding("utf-8") end
  def getTruckRightOrLeft() @before_racing.b.slice(Truck_Right_Or_Left).force_encoding("utf-8") end
  def getTruckInsideOrOutside() @before_racing.b.slice(Truck_Inside_Or_Outside).force_encoding("utf-8") end
  def getRaceConditionRidingGroundCondition() @before_racing.b.slice(Race_Condition_Riding_Ground_Condition).force_encoding("utf-8") end
  def getRaceConditionClass() @before_racing.b.slice(Race_Condition_Class).force_encoding("utf-8") end
  def getRaceConditionRequirement() @before_racing.b.slice(Race_Condition_Requirement).force_encoding("utf-8") end
  def getRaceConditionSymbol() @before_racing.b.slice(Race_Condition_Symbol).force_encoding("utf-8") end
  def getRaceConditionWeight() @before_racing.b.slice(Race_Condition_Weight).force_encoding("utf-8") end
  def getRaceConditionGrade() @before_racing.b.slice(Race_Condition_Grade).force_encoding("utf-8") end
  def getRaceConditionRaceName() @before_racing.b.slice(Race_Condition_Race_Name).force_encoding("utf-8") end
  def getRaceConditionHorseCount() @before_racing.b.slice(Race_Condition_Horse_Count).force_encoding("utf-8") end
  def getRaceConditionRaceNameShort() @before_racing.b.slice(Race_Condition_Race_Name_Short).force_encoding("utf-8") end
  def getHorseRacePerformanceRanking() @before_racing.b.slice(Horse_Race_Performance_Ranking).force_encoding("utf-8") end
  def getHorseRacePerformanceAbnormalClassification() @before_racing.b.slice(Horse_Race_Performance_Abnormal_Classification).force_encoding("utf-8") end
  def getHorseRacePerformanceTime() @before_racing.b.slice(Horse_Race_Performance_Time).force_encoding("utf-8") end
  def getHorseRacePerformanceBasisWeight() @before_racing.b.slice(Horse_Race_Performance_Basis_Weight).force_encoding("utf-8") end
  def getHorseRacePerformanceJockeyName() @before_racing.b.slice(Horse_Race_Performance_Jockey_Name).force_encoding("utf-8") end
  def getHorseRacePerformanceTrainerName() @before_racing.b.slice(Horse_Race_Performance_Trainer_Name).force_encoding("utf-8") end
  def getHorseRacePerformanceConfirmWinOdds() @before_racing.b.slice(Horse_Race_Performance_Confirm_Win_Odds).force_encoding("utf-8") end
  def getHorseRacePerformanceConfirmWinPopularRank() @before_racing.b.slice(Horse_Race_Performance_Confirm_Win_Popular_Rank).force_encoding("utf-8") end
  def getJrdbIdm() @before_racing.b.slice(Jrdb_Idm).force_encoding("utf-8") end
  def getJrdbPrimaryPoint() @before_racing.b.slice(Jrdb_Primary_Point).force_encoding("utf-8") end
  def getJrdbRidingGroundReference() @before_racing.b.slice(Jrdb_Riding_Ground_Reference).force_encoding("utf-8") end
  def getJrdbPace() @before_racing.b.slice(Jrdb_Pace).force_encoding("utf-8") end
  def getJrdbLagging() @before_racing.b.slice(Jrdb_Lagging).force_encoding("utf-8") end
  def getJrdbPositionOfRace() @before_racing.b.slice(Jrdb_Position_Of_Race).force_encoding("utf-8") end
  def getJrdbUnfavorable() @before_racing.b.slice(Jrdb_Unfavorable).force_encoding("utf-8") end
  def getJrdbUnfavorableBefore() @before_racing.b.slice(Jrdb_Unfavorable_Before).force_encoding("utf-8") end
  def getJrdbUnfavorableMiddle() @before_racing.b.slice(Jrdb_Unfavorable_Middle).force_encoding("utf-8") end
  def getJrdbUnfavorableAfter() @before_racing.b.slice(Jrdb_Unfavorable_After).force_encoding("utf-8") end
  def getJrdbRace() @before_racing.b.slice(Jrdb_Race).force_encoding("utf-8") end
  def getJrdbCourseRemoval() @before_racing.b.slice(Jrdb_Course_Removal).force_encoding("utf-8") end
  def getJrdbRisingCode() @before_racing.b.slice(Jrdb_Rising_Code).force_encoding("utf-8") end
  def getJrdbClassCode() @before_racing.b.slice(Jrdb_Class_Code).force_encoding("utf-8") end
  def getJrdbHorseBodyCode() @before_racing.b.slice(Jrdb_Horse_Body_Code).force_encoding("utf-8") end
  def getJrdbSignCode() @before_racing.b.slice(Jrdb_Sign_Code).force_encoding("utf-8") end
  def getJrdbRacePace() @before_racing.b.slice(Jrdb_Race_Pace).force_encoding("utf-8") end
  def getJrdbHorsePace() @before_racing.b.slice(Jrdb_Horse_Pace).force_encoding("utf-8") end
  def getJrdbTenIndex() @before_racing.b.slice(Jrdb_Ten_Index).force_encoding("utf-8") end
  def getJrdbRisingIndexCode() @before_racing.b.slice(Jrdb_Rising_Index_Code).force_encoding("utf-8") end
  def getJrdbPaceIndex() @before_racing.b.slice(Jrdb_Pace_Index).force_encoding("utf-8") end
  def getJrdbRacePaceIndex() @before_racing.b.slice(Jrdb_Race_Pace_Index).force_encoding("utf-8") end
  def getJrdbFirstSecondHorseName() @before_racing.b.slice(Jrdb_First_Second_Horse_Name).force_encoding("utf-8") end
  def getJrdbFirstSecondHorseTimeReference() @before_racing.b.slice(Jrdb_First_Second_Horse_Time_Reference).force_encoding("utf-8") end
  def getJrdbBefore3FTime() @before_racing.b.slice(Jrdb_Before_3F_Time).force_encoding("utf-8") end
  def getJrdbAfter3FTime() @before_racing.b.slice(Jrdb_After_3F_Time).force_encoding("utf-8") end
  def getJrdbRemarks() @before_racing.b.slice(Jrdb_Remarks).force_encoding("utf-8") end
  def getReserve() @before_racing.b.slice(Reserve).force_encoding("utf-8") end
  def getDefinitiveMultipleWinOddsUnder() @before_racing.b.slice(Definitive_Multiple_Win_Odds_Under).force_encoding("utf-8") end
  def getTenClockWinOdds() @before_racing.b.slice(Ten_Clock_Win_Odds).force_encoding("utf-8") end
  def getTenClockShowOdds() @before_racing.b.slice(Ten_Clock_Show_Odds).force_encoding("utf-8") end
  def getCornerOrder1() @before_racing.b.slice(Corner_Order_1).force_encoding("utf-8") end
  def getCornerOrder2() @before_racing.b.slice(Corner_Order_2).force_encoding("utf-8") end
  def getCornerOrder3() @before_racing.b.slice(Corner_Order_3).force_encoding("utf-8") end
  def getCornerOrder4() @before_racing.b.slice(Corner_Order_4).force_encoding("utf-8") end
  def getFirstDifferenceBefore3F() @before_racing.b.slice(First_Difference_Before_3F).force_encoding("utf-8") end
  def getFirstDifferenceAfter3F() @before_racing.b.slice(First_Difference_After_3F).force_encoding("utf-8") end
  def getJockeyCode() @before_racing.b.slice(Jockey_Code).force_encoding("utf-8") end
  def getTrainerCode() @before_racing.b.slice(Trainer_Code).force_encoding("utf-8") end
  def getHorseWeight() @before_racing.b.slice(Horse_Weight).force_encoding("utf-8") end
  def getHorseWeightGain() @before_racing.b.slice(Horse_Weight_Gain).force_encoding("utf-8") end
  def getWeatherCode() @before_racing.b.slice(Weather_Code).force_encoding("utf-8") end
  def getCourse() @before_racing.b.slice(Course).force_encoding("utf-8") end
  def getRaceLegQuality() @before_racing.b.slice(Race_Leg_Quality).force_encoding("utf-8") end
  def getWin() @before_racing.b.slice(Win).force_encoding("utf-8") end
  def getShow() @before_racing.b.slice(Show).force_encoding("utf-8") end
  def getPrizeMoney() @before_racing.b.slice(Prize_Money).force_encoding("utf-8") end
  def getIncomePrize() @before_racing.b.slice(Income_Prize).force_encoding("utf-8") end
  def getRacePaceFlow() @before_racing.b.slice(Race_Pace_Flow).force_encoding("utf-8") end
  def getHorsePaceFlow() @before_racing.b.slice(Horse_Pace_Flow).force_encoding("utf-8") end
  def getFourAnglesCoursesCollecting() @before_racing.b.slice(Four_Angles _Courses_Collecting).force_encoding("utf-8") end
end


