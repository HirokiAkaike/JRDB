class DisassembleTvProgram
  Race_Key_Course_Code = (0..1)
  Race_Key_Year = (2..3)
  Race_Key_Times = 4
  Race_Key_Day = 5
  Race_Key_Number_Of_Race = (6..7)
  Race_Key_Horse_Number = (8..15)
  Race_Condition_Time_Of_Launch = (16..19)
  Race_Condition_Distance = (20..23)
  Truck_Turf_Dirt_Fault_Code = 24
  Truck_Right_Or_Left = 25
  Truck_Inside_Or_Outside = 26
  Race_Condition_Class = (27..28)
  Race_Condition_Requirement = (29..30)
  Race_Condition_Symbol = (31..33)
  Race_Condition_Weight = 34
  Race_Condition_Grade = 35
  Race_Condition_Race_Name = (36..85)
  Race_Condition_Times = (86..93)
  Race_Condition_Horse_Count = (94..95)
  Race_Condition_Course = 96
  Race_Condition_Holding_Class = 97
  Race_Condition_Race_Name_Short = (98..105)
  Race_Condition_Race_Name_Nine = (106..123)
  Data_Class = 124
  One_Prize_Money = (125..129)
  Two_Prize_Money = (130..134)
  Three_Prize_Money = (135..139)
  Four_Prize_Money = (140..144)
  Five_Prize_Money = (145..149)
  One_Budget_Cash_Prize = (150..154)
  Two_Budget_Cash_Prize = (155..159)
  Ticket＿Release_Flg = (160..175)
  Win_Five_Flg = 176

  def initialize(tvProgram)
    @tvProgram = tvProgram
  end

  def getRaceKeyCourseCode() @tvProgram.b.slice(Race_Key_Course_Code).force_encoding("utf-8") end
  def getRaceKeyYear() @tvProgram.b.slice(Race_Key_Year).force_encoding("utf-8") end
  def getRaceKeyTimes() @tvProgram.b.slice(Race_Key_Times).force_encoding("utf-8") end
  def getRaceKeyDay() @tvProgram.b.slice(Race_Key_Day).force_encoding("utf-8") end
  def getRaceKeyNumberOfRace() @tvProgram.b.slice(Race_Key_Number_Of_Race).force_encoding("utf-8") end
  def getRaceKeyHorseNumber() @tvProgram.b.slice(Race_Key_Horse_Number).force_encoding("utf-8") end
  def getRaceConditionTimeOfLaunch() @tvProgram.b.slice(Race_Condition_Time_Of_Launch).force_encoding("utf-8") end
  def getRaceConditionDistance() @tvProgram.b.slice(Race_Condition_Distance).force_encoding("utf-8") end
  def getTruckTurfDirtFaultCode() @tvProgram.b.slice(Truck_Turf_Dirt_Fault_Code).force_encoding("utf-8") end
  def getTruckRightOrLeft() @tvProgram.b.slice(Truck_Right_Or_Left).force_encoding("utf-8") end
  def getTruckInsideOrOutside() @tvProgram.b.slice(Truck_Inside_Or_Outside).force_encoding("utf-8") end
  def getRaceConditionClass() @tvProgram.b.slice(Race_Condition_Class).force_encoding("utf-8") end
  def getRaceConditionRequirement() @tvProgram.b.slice(Race_Condition_Requirement).force_encoding("utf-8") end
  def getRaceConditionSymbol() @tvProgram.b.slice(Race_Condition_Symbol).force_encoding("utf-8") end
  def getRaceConditionWeight() @tvProgram.b.slice(Race_Condition_Weight).force_encoding("utf-8") end
  def getRaceConditionGrade() @tvProgram.b.slice(Race_Condition_Grade).force_encoding("utf-8") end
  def getRaceConditionRaceName() @tvProgram.b.slice(Race_Condition_Race_Name).force_encoding("utf-8") end
  def getRaceConditionTimes() @tvProgram.b.slice(Race_Condition_Times).force_encoding("utf-8") end
  def getRaceConditionHorseCount() @tvProgram.b.slice(Race_Condition_Horse_Count).force_encoding("utf-8") end
  def getRaceConditionCourse() @tvProgram.b.slice(Race_Condition_Course).force_encoding("utf-8") end
  def getRaceConditionHoldingClass() @tvProgram.b.slice(Race_Condition_Holding_Class).force_encoding("utf-8") end
  def getRaceConditionRaceNameShort() @tvProgram.b.slice(Race_Condition_Race_Name_Short).force_encoding("utf-8") end
  def getRaceConditionRaceNameNine() @tvProgram.b.slice(Race_Condition_Race_Name_Nine).force_encoding("utf-8") end
  def getDataClass() @tvProgram.b.slice(Data_Class).force_encoding("utf-8") end
  def getOnePrizeMoney() @tvProgram.b.slice(One_Prize_Money).force_encoding("utf-8") end
  def getTwoPrizeMoney() @tvProgram.b.slice(Two_Prize_Money).force_encoding("utf-8") end
  def getThreePrizeMoney() @tvProgram.b.slice(Three_Prize_Money).force_encoding("utf-8") end
  def getFourPrizeMoney() @tvProgram.b.slice(Four_Prize_Money).force_encoding("utf-8") end
  def getFivePrizeMoney() @tvProgram.b.slice(Five_Prize_Money).force_encoding("utf-8") end
  def getOneBudgetCashPrize() @tvProgram.b.slice(One_Budget_Cash_Prize).force_encoding("utf-8") end
  def getTwoBudgetCashPrize() @tvProgram.b.slice(Two_Budget_Cash_Prize).force_encoding("utf-8") end
  def getTicket＿ReleaseFlg() @tvProgram.b.slice(Ticket＿Release_Flg).force_encoding("utf-8") end
  def getWinFiveFlg() @tvProgram.b.slice(Win_Five_Flg).force_encoding("utf-8") end

end


