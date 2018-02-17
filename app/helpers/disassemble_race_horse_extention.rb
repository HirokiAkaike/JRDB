class DisassembleRaceHorseExtention

  Race_Key_Course_Code = (0..1)
  Race_Key_Year = (2..3)
  Race_Key_Times = 4
  Race_Key_Day = 5
  Race_Key_Number_Of_Race = (6..7)
  Race_Horse_Number = (8..9)
  Jra_Achievement_1 = (10..12)
  Jra_Achievement_2 = (13..15)
  Jra_Achievement_3 = (16..18)
  Jra_Achievement_4 = (19..21)
  Interaction_Achievement_1 = (22..24)
  Interaction_Achievement_2 = (25..27)
  Interaction_Achievement_3 = (28..30)
  Interaction_Achievement_4 = (31..33)
  Other_Achievement_1 = (34..36)
  Other_Achievement_2 = (37..39)
  Other_Achievement_3 = (40..42)
  Other_Achievement_4 = (43..45)
  Turf_Dirt_Fault_Achievement_1 = (46..48)
  Turf_Dirt_Fault_Achievement_2 = (49..51)
  Turf_Dirt_Fault_Achievement_3 = (52..54)
  Turf_Dirt_Fault_Achievement_4 = (55..57)
  Turf_Dirt_Fault_Distance_Achievement_1 = (58..60)
  Turf_Dirt_Fault_Distance_Achievement_2 = (61..63)
  Turf_Dirt_Fault_Distance_Achievement_3 = (64..66)
  Turf_Dirt_Fault_Distance_Achievement_4 = (67..69)
  Truck_Distance_Achievement_1 = (70..72)
  Truck_Distance_Achievement_2 = (73..75)
  Truck_Distance_Achievement_3 = (76..78)
  Truck_Distance_Achievement_4 = (79..81)
  Rotation_Achievement_1 = (82..84)
  Rotation_Achievement_2 = (85..87)
  Rotation_Achievement_3 = (88..90)
  Rotation_Achievement_4 = (91..93)
  Circle_Achievement_1 = (94..96)
  Circle_Achievement_2 = (97..99)
  Circle_Achievement_3 = (100..102)
  Circle_Achievement_4 = (103..105)
  Jockey_Achievement_1 = (106..108)
  Jockey_Achievement_2 = (109..111)
  Jockey_Achievement_3 = (112..114)
  Jockey_Achievement_4 = (115..117)
  Good_Field_Achievement_1 = (118..120)
  Good_Field_Achievement_2 = (121..123)
  Good_Field_Achievement_3 = (124..126)
  Good_Field_Achievement_4 = (127..129)
  Bad_Field_Achievement_1 = (130..132)
  Bad_Field_Achievement_2 = (133..135)
  Bad_Field_Achievement_3 = (136..138)
  Bad_Field_Achievement_4 = (139..141)
  Fail_Field_Achievement_1 = (142..144)
  Fail_Field_Achievement_2 = (145..147)
  Fail_Field_Achievement_3 = (148..150)
  Fail_Field_Achievement_4 = (151..153)
  S_Pace_Achievement_1 = (154..156)
  S_Pace_Achievement_2 = (157..159)
  S_Pace_Achievement_3 = (160..162)
  S_Pace_Achievement_4 = (163..165)
  M_Pace_Achievement_1 = (166..168)
  M_Pace_Achievement_2 = (169..171)
  M_Pace_Achievement_3 = (172..174)
  M_Pace_Achievement_4 = (175..177)
  H_Pace_Achievement_1 = (178..180)
  H_Pace_Achievement_2 = (181..183)
  H_Pace_Achievement_3 = (184..186)
  H_Pace_Achievement_4 = (187..189)
  Season_Achievement_1 = (190..192)
  Season_Achievement_2 = (193..195)
  Season_Achievement_3 = (196..198)
  Season_Achievement_4 = (199..201)
  Bracket_Achievement_1 = (202..204)
  Bracket_Achievement_2 = (205..207)
  Bracket_Achievement_3 = (208..210)
  Bracket_Achievement_4 = (211..213)
  Jockey_Distance_Achievement_1 = (214..216)
  Jockey_Distance_Achievement_2 = (217..219)
  Jockey_Distance_Achievement_3 = (220..222)
  Jockey_Distance_Achievement_4 = (223..225)
  Jockey_Distance_Truck_Achievement_One_1 = (226..228)
  Jockey_Distance_Truck_Achievement_One_2 = (229..231)
  Jockey_Distance_Truck_Achievement_One_3 = (232..234)
  Jockey_Distance_Truck_Achievement_One_4 = (235..237)
  Jockey_Trainer_Achievement_1 = (238..240)
  Jockey_Trainer_Achievement_2 = (241..243)
  Jockey_Trainer_Achievement_3 = (244..246)
  Jockey_Trainer_Achievement_4 = (247..249)
  Jockey_Owner_Achievement_1 = (250..252)
  Jockey_Owner_Achievement_2 = (253..255)
  Jockey_Owner_Achievement_3 = (256..258)
  Jockey_Owner_Achievement_4 = (259..261)
  Jockey_Blinker_Achievement_1 = (262..264)
  Jockey_Blinker_Achievement_2 = (265..267)
  Jockey_Blinker_Achievement_3 = (268..270)
  Jockey_Blinker_Achievement_4 = (271..273)
  Trainer_Owner_Achievement_1 = (274..276)
  Trainer_Owner_Achievement_2 = (277..279)
  Trainer_Owner_Achievement_3 = (280..282)
  Trainer_Owner_Achievement_4 = (283..285)
  Turf_Father_Lineage_Quinella_Rate = (286..288)
  Dirt_Father_Lineage_Quinella_Rate = (289..291)
  Father_Lineage_Quinella_Rate_Distance_Avg = (292..295)
  Turf_Maternal_Father_Lineage_Quinella_Rate = (296..298)
  Dirt_Maternal_Father_Lineage_Quinella_Rate = (299..301)
  Maternal_Father_Lineage_Quinella_Rate_Distance_Avg = (302..305)

  def initialize(race_horse_extention )
    @race_horse_extention = race_horse_extention
  end

  def getRaceKeyCourseCode() @race_horse_extention.b.slice(Race_Key_Course_Code).force_encoding("utf-8") end
  def getRaceKeyYear() @race_horse_extention.b.slice(Race_Key_Year).force_encoding("utf-8") end
  def getRaceKeyTimes() @race_horse_extention.b.slice(Race_Key_Times).force_encoding("utf-8") end
  def getRaceKeyDay() @race_horse_extention.b.slice(Race_Key_Day).force_encoding("utf-8") end
  def getRaceKeyNumberOfRace() @race_horse_extention.b.slice(Race_Key_Number_Of_Race).force_encoding("utf-8") end
  def getRaceHorseNumber() @race_horse_extention.b.slice(Race_Horse_Number).force_encoding("utf-8") end
  def getJraAchievement1() @race_horse_extention.b.slice(Jra_Achievement_1).force_encoding("utf-8") end
  def getJraAchievement2() @race_horse_extention.b.slice(Jra_Achievement_2).force_encoding("utf-8") end
  def getJraAchievement3() @race_horse_extention.b.slice(Jra_Achievement_3).force_encoding("utf-8") end
  def getJraAchievement4() @race_horse_extention.b.slice(Jra_Achievement_4).force_encoding("utf-8") end
  def getInteractionAchievement1() @race_horse_extention.b.slice(Interaction_Achievement_1).force_encoding("utf-8") end
  def getInteractionAchievement2() @race_horse_extention.b.slice(Interaction_Achievement_2).force_encoding("utf-8") end
  def getInteractionAchievement3() @race_horse_extention.b.slice(Interaction_Achievement_3).force_encoding("utf-8") end
  def getInteractionAchievement4() @race_horse_extention.b.slice(Interaction_Achievement_4).force_encoding("utf-8") end
  def getOtherAchievement1() @race_horse_extention.b.slice(Other_Achievement_1).force_encoding("utf-8") end
  def getOtherAchievement2() @race_horse_extention.b.slice(Other_Achievement_2).force_encoding("utf-8") end
  def getOtherAchievement3() @race_horse_extention.b.slice(Other_Achievement_3).force_encoding("utf-8") end
  def getOtherAchievement4() @race_horse_extention.b.slice(Other_Achievement_4).force_encoding("utf-8") end
  def getTurfDirtFaultAchievement1() @race_horse_extention.b.slice(Turf_Dirt_Fault_Achievement_1).force_encoding("utf-8") end
  def getTurfDirtFaultAchievement2() @race_horse_extention.b.slice(Turf_Dirt_Fault_Achievement_2).force_encoding("utf-8") end
  def getTurfDirtFaultAchievement3() @race_horse_extention.b.slice(Turf_Dirt_Fault_Achievement_3).force_encoding("utf-8") end
  def getTurfDirtFaultAchievement4() @race_horse_extention.b.slice(Turf_Dirt_Fault_Achievement_4).force_encoding("utf-8") end
  def getTurfDirtFaultDistanceAchievement1() @race_horse_extention.b.slice(Turf_Dirt_Fault_Distance_Achievement_1).force_encoding("utf-8") end
  def getTurfDirtFaultDistanceAchievement2() @race_horse_extention.b.slice(Turf_Dirt_Fault_Distance_Achievement_2).force_encoding("utf-8") end
  def getTurfDirtFaultDistanceAchievement3() @race_horse_extention.b.slice(Turf_Dirt_Fault_Distance_Achievement_3).force_encoding("utf-8") end
  def getTurfDirtFaultDistanceAchievement4() @race_horse_extention.b.slice(Turf_Dirt_Fault_Distance_Achievement_4).force_encoding("utf-8") end
  def getTruckDistanceAchievement1() @race_horse_extention.b.slice(Truck_Distance_Achievement_1).force_encoding("utf-8") end
  def getTruckDistanceAchievement2() @race_horse_extention.b.slice(Truck_Distance_Achievement_2).force_encoding("utf-8") end
  def getTruckDistanceAchievement3() @race_horse_extention.b.slice(Truck_Distance_Achievement_3).force_encoding("utf-8") end
  def getTruckDistanceAchievement4() @race_horse_extention.b.slice(Truck_Distance_Achievement_4).force_encoding("utf-8") end
  def getRotationAchievement1() @race_horse_extention.b.slice(Rotation_Achievement_1).force_encoding("utf-8") end
  def getRotationAchievement2() @race_horse_extention.b.slice(Rotation_Achievement_2).force_encoding("utf-8") end
  def getRotationAchievement3() @race_horse_extention.b.slice(Rotation_Achievement_3).force_encoding("utf-8") end
  def getRotationAchievement4() @race_horse_extention.b.slice(Rotation_Achievement_4).force_encoding("utf-8") end
  def getCircleAchievement1() @race_horse_extention.b.slice(Circle_Achievement_1).force_encoding("utf-8") end
  def getCircleAchievement2() @race_horse_extention.b.slice(Circle_Achievement_2).force_encoding("utf-8") end
  def getCircleAchievement3() @race_horse_extention.b.slice(Circle_Achievement_3).force_encoding("utf-8") end
  def getCircleAchievement4() @race_horse_extention.b.slice(Circle_Achievement_4).force_encoding("utf-8") end
  def getJockeyAchievement1() @race_horse_extention.b.slice(Jockey_Achievement_1).force_encoding("utf-8") end
  def getJockeyAchievement2() @race_horse_extention.b.slice(Jockey_Achievement_2).force_encoding("utf-8") end
  def getJockeyAchievement3() @race_horse_extention.b.slice(Jockey_Achievement_3).force_encoding("utf-8") end
  def getJockeyAchievement4() @race_horse_extention.b.slice(Jockey_Achievement_4).force_encoding("utf-8") end
  def getGoodFieldAchievement1() @race_horse_extention.b.slice(Good_Field_Achievement_1).force_encoding("utf-8") end
  def getGoodFieldAchievement2() @race_horse_extention.b.slice(Good_Field_Achievement_2).force_encoding("utf-8") end
  def getGoodFieldAchievement3() @race_horse_extention.b.slice(Good_Field_Achievement_3).force_encoding("utf-8") end
  def getGoodFieldAchievement4() @race_horse_extention.b.slice(Good_Field_Achievement_4).force_encoding("utf-8") end
  def getBadFieldAchievement1() @race_horse_extention.b.slice(Bad_Field_Achievement_1).force_encoding("utf-8") end
  def getBadFieldAchievement2() @race_horse_extention.b.slice(Bad_Field_Achievement_2).force_encoding("utf-8") end
  def getBadFieldAchievement3() @race_horse_extention.b.slice(Bad_Field_Achievement_3).force_encoding("utf-8") end
  def getBadFieldAchievement4() @race_horse_extention.b.slice(Bad_Field_Achievement_4).force_encoding("utf-8") end
  def getFailFieldAchievement1() @race_horse_extention.b.slice(Fail_Field_Achievement_1).force_encoding("utf-8") end
  def getFailFieldAchievement2() @race_horse_extention.b.slice(Fail_Field_Achievement_2).force_encoding("utf-8") end
  def getFailFieldAchievement3() @race_horse_extention.b.slice(Fail_Field_Achievement_3).force_encoding("utf-8") end
  def getFailFieldAchievement4() @race_horse_extention.b.slice(Fail_Field_Achievement_4).force_encoding("utf-8") end
  def getSPaceAchievement1() @race_horse_extention.b.slice(S_Pace_Achievement_1).force_encoding("utf-8") end
  def getSPaceAchievement2() @race_horse_extention.b.slice(S_Pace_Achievement_2).force_encoding("utf-8") end
  def getSPaceAchievement3() @race_horse_extention.b.slice(S_Pace_Achievement_3).force_encoding("utf-8") end
  def getSPaceAchievement4() @race_horse_extention.b.slice(S_Pace_Achievement_4).force_encoding("utf-8") end
  def getMPaceAchievement1() @race_horse_extention.b.slice(M_Pace_Achievement_1).force_encoding("utf-8") end
  def getMPaceAchievement2() @race_horse_extention.b.slice(M_Pace_Achievement_2).force_encoding("utf-8") end
  def getMPaceAchievement3() @race_horse_extention.b.slice(M_Pace_Achievement_3).force_encoding("utf-8") end
  def getMPaceAchievement4() @race_horse_extention.b.slice(M_Pace_Achievement_4).force_encoding("utf-8") end
  def getHPaceAchievement1() @race_horse_extention.b.slice(H_Pace_Achievement_1).force_encoding("utf-8") end
  def getHPaceAchievement2() @race_horse_extention.b.slice(H_Pace_Achievement_2).force_encoding("utf-8") end
  def getHPaceAchievement3() @race_horse_extention.b.slice(H_Pace_Achievement_3).force_encoding("utf-8") end
  def getHPaceAchievement4() @race_horse_extention.b.slice(H_Pace_Achievement_4).force_encoding("utf-8") end
  def getSeasonAchievement1() @race_horse_extention.b.slice(Season_Achievement_1).force_encoding("utf-8") end
  def getSeasonAchievement2() @race_horse_extention.b.slice(Season_Achievement_2).force_encoding("utf-8") end
  def getSeasonAchievement3() @race_horse_extention.b.slice(Season_Achievement_3).force_encoding("utf-8") end
  def getSeasonAchievement4() @race_horse_extention.b.slice(Season_Achievement_4).force_encoding("utf-8") end
  def getBracketAchievement1() @race_horse_extention.b.slice(Bracket_Achievement_1).force_encoding("utf-8") end
  def getBracketAchievement2() @race_horse_extention.b.slice(Bracket_Achievement_2).force_encoding("utf-8") end
  def getBracketAchievement3() @race_horse_extention.b.slice(Bracket_Achievement_3).force_encoding("utf-8") end
  def getBracketAchievement4() @race_horse_extention.b.slice(Bracket_Achievement_4).force_encoding("utf-8") end
  def getJockeyDistanceAchievement1() @race_horse_extention.b.slice(Jockey_Distance_Achievement_1).force_encoding("utf-8") end
  def getJockeyDistanceAchievement2() @race_horse_extention.b.slice(Jockey_Distance_Achievement_2).force_encoding("utf-8") end
  def getJockeyDistanceAchievement3() @race_horse_extention.b.slice(Jockey_Distance_Achievement_3).force_encoding("utf-8") end
  def getJockeyDistanceAchievement4() @race_horse_extention.b.slice(Jockey_Distance_Achievement_4).force_encoding("utf-8") end
  def getJockeyDistanceTruckAchievementOne1() @race_horse_extention.b.slice(Jockey_Distance_Truck_Achievement_One_1).force_encoding("utf-8") end
  def getJockeyDistanceTruckAchievementOne2() @race_horse_extention.b.slice(Jockey_Distance_Truck_Achievement_One_2).force_encoding("utf-8") end
  def getJockeyDistanceTruckAchievementOne3() @race_horse_extention.b.slice(Jockey_Distance_Truck_Achievement_One_3).force_encoding("utf-8") end
  def getJockeyDistanceTruckAchievementOne4() @race_horse_extention.b.slice(Jockey_Distance_Truck_Achievement_One_4).force_encoding("utf-8") end
  def getJockeyTrainerAchievement1() @race_horse_extention.b.slice(Jockey_Trainer_Achievement_1).force_encoding("utf-8") end
  def getJockeyTrainerAchievement2() @race_horse_extention.b.slice(Jockey_Trainer_Achievement_2).force_encoding("utf-8") end
  def getJockeyTrainerAchievement3() @race_horse_extention.b.slice(Jockey_Trainer_Achievement_3).force_encoding("utf-8") end
  def getJockeyTrainerAchievement4() @race_horse_extention.b.slice(Jockey_Trainer_Achievement_4).force_encoding("utf-8") end
  def getJockeyOwnerAchievement1() @race_horse_extention.b.slice(Jockey_Owner_Achievement_1).force_encoding("utf-8") end
  def getJockeyOwnerAchievement2() @race_horse_extention.b.slice(Jockey_Owner_Achievement_2).force_encoding("utf-8") end
  def getJockeyOwnerAchievement3() @race_horse_extention.b.slice(Jockey_Owner_Achievement_3).force_encoding("utf-8") end
  def getJockeyOwnerAchievement4() @race_horse_extention.b.slice(Jockey_Owner_Achievement_4).force_encoding("utf-8") end
  def getJockeyBlinkerAchievement1() @race_horse_extention.b.slice(Jockey_Blinker_Achievement_1).force_encoding("utf-8") end
  def getJockeyBlinkerAchievement2() @race_horse_extention.b.slice(Jockey_Blinker_Achievement_2).force_encoding("utf-8") end
  def getJockeyBlinkerAchievement3() @race_horse_extention.b.slice(Jockey_Blinker_Achievement_3).force_encoding("utf-8") end
  def getJockeyBlinkerAchievement4() @race_horse_extention.b.slice(Jockey_Blinker_Achievement_4).force_encoding("utf-8") end
  def getTrainerOwnerAchievement1() @race_horse_extention.b.slice(Trainer_Owner_Achievement_1).force_encoding("utf-8") end
  def getTrainerOwnerAchievement2() @race_horse_extention.b.slice(Trainer_Owner_Achievement_2).force_encoding("utf-8") end
  def getTrainerOwnerAchievement3() @race_horse_extention.b.slice(Trainer_Owner_Achievement_3).force_encoding("utf-8") end
  def getTrainerOwnerAchievement4() @race_horse_extention.b.slice(Trainer_Owner_Achievement_4).force_encoding("utf-8") end
  def getTurfFatherLineageQuinellaRate() @race_horse_extention.b.slice(Turf_Father_Lineage_Quinella_Rate).force_encoding("utf-8") end
  def getDirtFatherLineageQuinellaRate() @race_horse_extention.b.slice(Dirt_Father_Lineage_Quinella_Rate).force_encoding("utf-8") end
  def getFatherLineageQuinellaRateDistanceAvg() @race_horse_extention.b.slice(Father_Lineage_Quinella_Rate_Distance_Avg).force_encoding("utf-8") end
  def getTurfMaternalFatherLineageQuinellaRate() @race_horse_extention.b.slice(Turf_Maternal_Father_Lineage_Quinella_Rate).force_encoding("utf-8") end
  def getDirtMaternalFatherLineageQuinellaRate() @race_horse_extention.b.slice(Dirt_Maternal_Father_Lineage_Quinella_Rate).force_encoding("utf-8") end
  def getMaternalFatherLineageQuinellaRateDistanceAvg() @race_horse_extention.b.slice(Maternal_Father_Lineage_Quinella_Rate_Distance_Avg).force_encoding("utf-8") end
end


