class DisassembleBeforeRacingExtension

  Race_Key_Course_Code = (0..1)
  Race_Key_Year = (2..3)
  Race_Key_Times = 4
  Race_Key_Day = 5
  Race_Key_Number_Of_Race = (6..7)
  Race_Key_Horse_Number = (8..9)
  Race_Performance_Pedigree_Register_Code = (10..17)
  Race_Performance_Date_Ymd = (18..25)
  Special_Mention1 = (26..28)
  Special_Mention2 = (29..31)
  Special_Mention3 = (32..34)
  Special_Mention4 = (35..37)
  Special_Mention5 = (38..40)
  Special_Mention6 = (41..43)
  Harness_Code1 = (44..46)
  Harness_Code2 = (47..49)
  Harness_Code3 = (50..52)
  Harness_Code4 = (53..55)
  Harness_Code5 = (56..58)
  Harness_Code6 = (59..61)
  Harness_Code7 = (62..64)
  Harness_Code8 = (65..67)
  Leg_Code_General_1 = (68..70)
  Leg_Code_General_2 = (71..73)
  Leg_Code_General_3 = (74..76)
  Leg_Code_Left_Front_1 = (77..79)
  Leg_Code_Left_Front_2 = (80..82)
  Leg_Code_Left_Front_3 = (83..85)
  Leg_Code_Right_Front_1 = (86..88)
  Leg_Code_Right_Front_2 = (89..91)
  Leg_Code_Right_Front_3 = (92..94)
  Leg_Code_Left_Back_1 = (95..97)
  Leg_Code_Left_Back_2 = (98..100)
  Leg_Code_Left_Back_3 = (101..103)
  Leg_Code_Right_Back_1 = (104..106)
  Leg_Code_Right_Back_2 = (107..109)
  Leg_Code_Right_Back_3 = (110..112)
  Paddock_Comment = (113..152)
  Leg_Comment = (153..192)
  Harness_Other_Comment = (193..232)
  Race_Comment = (233..272)
  Data_Analysis_Hami = (273..275)
  Data_Analysis_Bandage = (276..278)
  Data_Analysis_Horseshoe = (279..281)
  Data_Analysis_Hoof_State = (282..284)
  Data_Analysis_Soe = (285..287)
  Data_Analysis_Osselet = (288..290)

  def initialize(before_racing_extension)
    @before_racing_extension = before_racing_extension
  end

  def getRaceKeyCourseCode() @before_racing_extension.b.slice(Race_Key_Course_Code).force_encoding("utf-8") end
  def getRaceKeyYear() @before_racing_extension.b.slice(Race_Key_Year).force_encoding("utf-8") end
  def getRaceKeyTimes() @before_racing_extension.b.slice(Race_Key_Times).force_encoding("utf-8") end
  def getRaceKeyDay() @before_racing_extension.b.slice(Race_Key_Day).force_encoding("utf-8") end
  def getRaceKeyNumberOfRace() @before_racing_extension.b.slice(Race_Key_Number_Of_Race).force_encoding("utf-8") end
  def getRaceKeyHorseNumber() @before_racing_extension.b.slice(Race_Key_Horse_Number).force_encoding("utf-8") end
  def getRacePerformancePedigreeRegisterCode() @before_racing_extension.b.slice(Race_Performance_Pedigree_Register_Code).force_encoding("utf-8") end
  def getRacePerformanceDateYmd() @before_racing_extension.b.slice(Race_Performance_Date_Ymd).force_encoding("utf-8") end
  def getSpecialMention1() @before_racing_extension.b.slice(Special_Mention1).force_encoding("utf-8") end
  def getSpecialMention2() @before_racing_extension.b.slice(Special_Mention2).force_encoding("utf-8") end
  def getSpecialMention3() @before_racing_extension.b.slice(Special_Mention3).force_encoding("utf-8") end
  def getSpecialMention4() @before_racing_extension.b.slice(Special_Mention4).force_encoding("utf-8") end
  def getSpecialMention5() @before_racing_extension.b.slice(Special_Mention5).force_encoding("utf-8") end
  def getSpecialMention6() @before_racing_extension.b.slice(Special_Mention6).force_encoding("utf-8") end
  def getHarnessCode1() @before_racing_extension.b.slice(Harness_Code1).force_encoding("utf-8") end
  def getHarnessCode2() @before_racing_extension.b.slice(Harness_Code2).force_encoding("utf-8") end
  def getHarnessCode3() @before_racing_extension.b.slice(Harness_Code3).force_encoding("utf-8") end
  def getHarnessCode4() @before_racing_extension.b.slice(Harness_Code4).force_encoding("utf-8") end
  def getHarnessCode5() @before_racing_extension.b.slice(Harness_Code5).force_encoding("utf-8") end
  def getHarnessCode6() @before_racing_extension.b.slice(Harness_Code6).force_encoding("utf-8") end
  def getHarnessCode7() @before_racing_extension.b.slice(Harness_Code7).force_encoding("utf-8") end
  def getHarnessCode8() @before_racing_extension.b.slice(Harness_Code8).force_encoding("utf-8") end
  def getLegCodeGeneral1() @before_racing_extension.b.slice(Leg_Code_General_1).force_encoding("utf-8") end
  def getLegCodeGeneral2() @before_racing_extension.b.slice(Leg_Code_General_2).force_encoding("utf-8") end
  def getLegCodeGeneral3() @before_racing_extension.b.slice(Leg_Code_General_3).force_encoding("utf-8") end
  def getLegCodeLeftFront1() @before_racing_extension.b.slice(Leg_Code_Left_Front_1).force_encoding("utf-8") end
  def getLegCodeLeftFront2() @before_racing_extension.b.slice(Leg_Code_Left_Front_2).force_encoding("utf-8") end
  def getLegCodeLeftFront3() @before_racing_extension.b.slice(Leg_Code_Left_Front_3).force_encoding("utf-8") end
  def getLegCodeRightFront1() @before_racing_extension.b.slice(Leg_Code_Right_Front_1).force_encoding("utf-8") end
  def getLegCodeRightFront2() @before_racing_extension.b.slice(Leg_Code_Right_Front_2).force_encoding("utf-8") end
  def getLegCodeRightFront3() @before_racing_extension.b.slice(Leg_Code_Right_Front_3).force_encoding("utf-8") end
  def getLegCodeLeftBack1() @before_racing_extension.b.slice(Leg_Code_Left_Back_1).force_encoding("utf-8") end
  def getLegCodeLeftBack2() @before_racing_extension.b.slice(Leg_Code_Left_Back_2).force_encoding("utf-8") end
  def getLegCodeLeftBack3() @before_racing_extension.b.slice(Leg_Code_Left_Back_3).force_encoding("utf-8") end
  def getLegCodeRightBack1() @before_racing_extension.b.slice(Leg_Code_Right_Back_1).force_encoding("utf-8") end
  def getLegCodeRightBack2() @before_racing_extension.b.slice(Leg_Code_Right_Back_2).force_encoding("utf-8") end
  def getLegCodeRightBack3() @before_racing_extension.b.slice(Leg_Code_Right_Back_3).force_encoding("utf-8") end
  def getPaddockComment() @before_racing_extension.b.slice(Paddock_Comment).force_encoding("utf-8") end
  def getLegComment() @before_racing_extension.b.slice(Leg_Comment).force_encoding("utf-8") end
  def getHarnessOtherComment() @before_racing_extension.b.slice(Harness_Other_Comment).force_encoding("utf-8") end
  def getRaceComment() @before_racing_extension.b.slice(Race_Comment).force_encoding("utf-8") end
  def getDataAnalysisHami() @before_racing_extension.b.slice(Data_Analysis_Hami).force_encoding("utf-8") end
  def getDataAnalysisBandage() @before_racing_extension.b.slice(Data_Analysis_Bandage).force_encoding("utf-8") end
  def getDataAnalysisHorseshoe() @before_racing_extension.b.slice(Data_Analysis_Horseshoe).force_encoding("utf-8") end
  def getDataAnalysisHoofState() @before_racing_extension.b.slice(Data_Analysis_Hoof_State).force_encoding("utf-8") end
  def getDataAnalysisSoe() @before_racing_extension.b.slice(Data_Analysis_Soe).force_encoding("utf-8") end
  def getDataAnalysisOsselet() @before_racing_extension.b.slice(Data_Analysis_Osselet).force_encoding("utf-8") end

end


