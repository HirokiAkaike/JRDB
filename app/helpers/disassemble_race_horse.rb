class DisassembleRaceHorse
  Race_Key_Course_Code = (0..1)
  Race_Key_Year = (2..3)
  Race_Key_Times = 4
  Race_Key_Day = 5
  Race_Key_Number_Of_Race = (6..7)
  Race_Horse_Number = (8..9)
  Horse_Pedigree_Registration_Code = (10..17)
  Horse_Name = (18..53)
  Idm = (54..58)
  Jockey_Index = (59..63)
  Infomation_Index = (64..68)
  Reserve_One = (69..73)
  Reserve_Two = (74..78)
  Reseve_Three = (79..83)
  Composite_Index = (84..88)
  Leg_Quality = 89
  Distance_Aptitude = 90
  Rising_Degree = 91
  Rotation = (92..94)
  Standard_Odds = (95..99)
  Standard_Popularity_Rank = (100..101)
  Standard_Show_Odds = (102..106)
  Standard_Show_Popularity_Rank = (107..108)
  Specific_Info_Excellent = (109..111)
  Specific_Info_Good = (112..114)
  Specific_Info_Fair = (115..117)
  Specific_Info_Bad = (118..120)
  Specific_Info_Failure  = (121..123)
  Composite_Info_Excellent = (124..126)
  Composite_Info_Good = (127..129)
  Composite_Info_Fair = (130..132)
  Composite_Info_Bad = (133..135)
  Composite_Info_Failure  = (136..138)
  Popularity_Index = (139..143)
  Training_Index = (144..148)
  Racing_Stable_Index = (149..153)
  Training_Arrow_Code = 154
  Racing_Stable_Evaluation_Code = 155
  Jockey_Expected_Confidence_Rate = (156..159)
  Rushing_Index = (160..162)
  Hoof_Code = (163..164)
  Heaviness_Aptitude_Code = 165
  Class_Code = (166..167)
  Reserve_Four = (168..169)
  Blinker_Code = 170
  Jockey_Name = (171..182)
  Burden_Weight = (183..185)
  Apprentice_Class = 186
  Trainer_Name = (187..198)
  Trainer_Belong = (199..202)
  Other_Data_Link_Key_Prebious_Run_1_Race_Score_Key = (203..218)
  Other_Data_Link_Key_Prebious_Run_2_Race_Score_Key = (219..234)
  Other_Data_Link_Key_Prebious_Run_3_Race_Score_Key = (235..250)
  Other_Data_Link_Key_Prebious_Run_4_Race_Score_Key = (251..266)
  Other_Data_Link_Key_Prebious_Run_5_Race_Score_Key = (267..282)
  Other_Data_Link_Key_Prebious_Run_1_Race_Key = (283..290)
  Other_Data_Link_Key_Prebious_Run_2_Race_Key = (291..298)
  Other_Data_Link_Key_Prebious_Run_3_Race_Key = (299..306)
  Other_Data_Link_Key_Prebious_Run_4_Race_Key = (307..314)
  Other_Data_Link_Key_Prebious_Run_5_Race_Key = (315..322)
  Bracket_Number = 323
  Reserve_Five = (324..325)
  Mark_Code_Composite = 326
  Mark_Code_Idm = 327
  Mark_Code_Infomation = 328
  Mark_Code_Jockey = 329
  Mark_Code_Racing_Stable = 330
  Mark_Code_Trainer = 331
  Mark_Code_Rushing = 332
  Turf_Aptitude_Code = 333
  Dirt_Aptitude_Code = 334
  Jockey_Code = (335..339)
  Trainer_Code = (340..344)
  Reserve_Six = 345
  Winning_Prize = (346..351)
  Income_Prize = (352..356)
  Condition_Class = 357
  Expansion_Forecast_Data_Ten_Index = (358..362)
  Expansion_Forecast_Data_Pace_Index = (363..367)
  Expansion_Forecast_Data_Ricing_Index = (368..372)
  Expansion_Forecast_Data_Position_Index = (373..377)
  Expansion_Forecast_Data_Pace = 378
  Expansion_Forecast_Data_Halfway_Ranking = (379..380)
  Expansion_Forecast_Data_Halfway_Difference = (381..382)
  Expansion_Forecast_Data_Halfway_Inside_Outside = 383
  Expansion_Forecast_Data_After_3F_Time = (384..385)
  Expansion_Forecast_Data_After_3F_Difference = (386..387)
  Expansion_Forecast_Data_After_3F_Inside_Outside = 388
  Expansion_Forecast_Data_Goal_Ranking = (389..390)
  Expansion_Forecast_Data_Goal_Difference = (391..392)
  Expansion_Forecast_Data_Goal_Inside_Outside = 393
  Expansion_Forecast_Data_Expansion_Symbol = 394
  Distance_Aptitude_Two = 395
  Horse_Weight_Fixed  = (396..398)
  Horse_Weight_Gain_Fixed  = (399..401)
  Cancel_Flg = 402
  Gender_Code = 403
  Owner_Name = (404..443)
  Owner_Belong_Code = (444..445)
  Horse_Symbol_Code = (446..447)
  Rushing_Runking = (448..449)
  Ls_Index_Runking = (450..451)
  Ten_Index_Runking = (452..453)
  Pace_Index_Runking = (454..455)
  Rising_Index_Runking = (456..457)
  Position_Index_Runking = (458..459)
  Jockey_Expectation_Victory_Rate = (460..463)
  Jockey_Expectation_3_Inside_Rate = (464..467)
  Transportation_Class = 468
  Exercise = (469..476)
  Body_Type = (477..500)
  Total_Body_Type_One = (501..503)
  Total_Body_Type_Two = (504..506)
  Total_Body_Type_Three = (507..509)
  Horse_Special_Mention_One = (510..512)
  Horse_Special_Mention_Two = (513..515)
  Horse_Special_Mention_Three = (516..518)
  Horse_Start_Index = (519..522)
  Horse_Departure_Rate = (523..526)
  Running_Before_Reference = (527..528)
  Reference_Riding_Jockey_Code = (529..533)
  Ten_Thousand_Ticket_Index = (534..536)
  Ten_Thousand_Ticket_Mark = 537
  Down_Class_Flg = 538
  Rushing_Type = (539..540)
  Recreation_Reason_Code = (541..542)
  Flg = (543..558)
  Racing_Stable_Running_Times = (559..560)
  Racing_Stable_Ymd = (561..568)
  Racing_Stable_Days = (569..571)
  Grazing_Destination = (572..621)
  Grazing_Destination_Rank = 622
  Racing_Stable_Rank = 623

  def initialize(race_horse)
    @race_horse = race_horse
  end

  def getRaceKeyCourseCode() @race_horse.b.slice(Race_Key_Course_Code).force_encoding("utf-8") end
  def getRaceKeyYear() @race_horse.b.slice(Race_Key_Year).force_encoding("utf-8") end
  def getRaceKeyTimes() @race_horse.b.slice(Race_Key_Times).force_encoding("utf-8") end
  def getRaceKeyDay() @race_horse.b.slice(Race_Key_Day).force_encoding("utf-8") end
  def getRaceKeyNumberOfRace() @race_horse.b.slice(Race_Key_Number_Of_Race).force_encoding("utf-8") end
  def getRaceHorseNumber() @race_horse.b.slice(Race_Horse_Number).force_encoding("utf-8") end
  def getHorsePedigreeRegistrationCode() @race_horse.b.slice(Horse_Pedigree_Registration_Code).force_encoding("utf-8") end
  def getHorseName() @race_horse.b.slice(Horse_Name).force_encoding("utf-8") end
  def getIdm() @race_horse.b.slice(Idm).force_encoding("utf-8") end
  def getJockeyIndex() @race_horse.b.slice(Jockey_Index).force_encoding("utf-8") end
  def getInfomationIndex() @race_horse.b.slice(Infomation_Index).force_encoding("utf-8") end
  def getReserveOne() @race_horse.b.slice(Reserve_One).force_encoding("utf-8") end
  def getReserveTwo() @race_horse.b.slice(Reserve_Two).force_encoding("utf-8") end
  def getReseveThree() @race_horse.b.slice(Reseve_Three).force_encoding("utf-8") end
  def getCompositeIndex() @race_horse.b.slice(Composite_Index).force_encoding("utf-8") end
  def getLegQuality() @race_horse.b.slice(Leg_Quality).force_encoding("utf-8") end
  def getDistanceAptitude() @race_horse.b.slice(Distance_Aptitude).force_encoding("utf-8") end
  def getRisingDegree() @race_horse.b.slice(Rising_Degree).force_encoding("utf-8") end
  def getRotation() @race_horse.b.slice(Rotation).force_encoding("utf-8") end
  def getStandardOdds() @race_horse.b.slice(Standard_Odds).force_encoding("utf-8") end
  def getStandardPopularityRank() @race_horse.b.slice(Standard_Popularity_Rank).force_encoding("utf-8") end
  def getStandardShowOdds() @race_horse.b.slice(Standard_Show_Odds).force_encoding("utf-8") end
  def getStandardShowPopularityRank() @race_horse.b.slice(Standard_Show_Popularity_Rank).force_encoding("utf-8") end
  def getSpecificInfoExcellent() @race_horse.b.slice(Specific_Info_Excellent).force_encoding("utf-8") end
  def getSpecificInfoGood() @race_horse.b.slice(Specific_Info_Good).force_encoding("utf-8") end
  def getSpecificInfoFair() @race_horse.b.slice(Specific_Info_Fair).force_encoding("utf-8") end
  def getSpecificInfoBad() @race_horse.b.slice(Specific_Info_Bad).force_encoding("utf-8") end
  def getSpecificInfoFailure () @race_horse.b.slice(Specific_Info_Failure ).force_encoding("utf-8") end
  def getCompositeInfoExcellent() @race_horse.b.slice(Composite_Info_Excellent).force_encoding("utf-8") end
  def getCompositeInfoGood() @race_horse.b.slice(Composite_Info_Good).force_encoding("utf-8") end
  def getCompositeInfoFair() @race_horse.b.slice(Composite_Info_Fair).force_encoding("utf-8") end
  def getCompositeInfoBad() @race_horse.b.slice(Composite_Info_Bad).force_encoding("utf-8") end
  def getCompositeInfoFailure () @race_horse.b.slice(Composite_Info_Failure ).force_encoding("utf-8") end
  def getPopularityIndex() @race_horse.b.slice(Popularity_Index).force_encoding("utf-8") end
  def getTrainingIndex() @race_horse.b.slice(Training_Index).force_encoding("utf-8") end
  def getRacingStableIndex() @race_horse.b.slice(Racing_Stable_Index).force_encoding("utf-8") end
  def getTrainingArrowCode() @race_horse.b.slice(Training_Arrow_Code).force_encoding("utf-8") end
  def getRacingStableEvaluationCode() @race_horse.b.slice(Racing_Stable_Evaluation_Code).force_encoding("utf-8") end
  def getJockeyExpectedConfidenceRate() @race_horse.b.slice(Jockey_Expected_Confidence_Rate).force_encoding("utf-8") end
  def getRushingIndex() @race_horse.b.slice(Rushing_Index).force_encoding("utf-8") end
  def getHoofCode() @race_horse.b.slice(Hoof_Code).force_encoding("utf-8") end
  def getHeavinessAptitudeCode() @race_horse.b.slice(Heaviness_Aptitude_Code).force_encoding("utf-8") end
  def getClassCode() @race_horse.b.slice(Class_Code).force_encoding("utf-8") end
  def getReserveFour() @race_horse.b.slice(Reserve_Four).force_encoding("utf-8") end
  def getBlinkerCode() @race_horse.b.slice(Blinker_Code).force_encoding("utf-8") end
  def getJockeyName() @race_horse.b.slice(Jockey_Name).force_encoding("utf-8") end
  def getBurdenWeight() @race_horse.b.slice(Burden_Weight).force_encoding("utf-8") end
  def getApprenticeClass() @race_horse.b.slice(Apprentice_Class).force_encoding("utf-8") end
  def getTrainerName() @race_horse.b.slice(Trainer_Name).force_encoding("utf-8") end
  def getTrainerBelong() @race_horse.b.slice(Trainer_Belong).force_encoding("utf-8") end
  def getOtherDataLinkKeyPrebiousRun1RaceScoreKey() @race_horse.b.slice(Other_Data_Link_Key_Prebious_Run_1_Race_Score_Key).force_encoding("utf-8") end
  def getOtherDataLinkKeyPrebiousRun2RaceScoreKey() @race_horse.b.slice(Other_Data_Link_Key_Prebious_Run_2_Race_Score_Key).force_encoding("utf-8") end
  def getOtherDataLinkKeyPrebiousRun3RaceScoreKey() @race_horse.b.slice(Other_Data_Link_Key_Prebious_Run_3_Race_Score_Key).force_encoding("utf-8") end
  def getOtherDataLinkKeyPrebiousRun4RaceScoreKey() @race_horse.b.slice(Other_Data_Link_Key_Prebious_Run_4_Race_Score_Key).force_encoding("utf-8") end
  def getOtherDataLinkKeyPrebiousRun5RaceScoreKey() @race_horse.b.slice(Other_Data_Link_Key_Prebious_Run_5_Race_Score_Key).force_encoding("utf-8") end
  def getOtherDataLinkKeyPrebiousRun1RaceKey() @race_horse.b.slice(Other_Data_Link_Key_Prebious_Run_1_Race_Key).force_encoding("utf-8") end
  def getOtherDataLinkKeyPrebiousRun2RaceKey() @race_horse.b.slice(Other_Data_Link_Key_Prebious_Run_2_Race_Key).force_encoding("utf-8") end
  def getOtherDataLinkKeyPrebiousRun3RaceKey() @race_horse.b.slice(Other_Data_Link_Key_Prebious_Run_3_Race_Key).force_encoding("utf-8") end
  def getOtherDataLinkKeyPrebiousRun4RaceKey() @race_horse.b.slice(Other_Data_Link_Key_Prebious_Run_4_Race_Key).force_encoding("utf-8") end
  def getOtherDataLinkKeyPrebiousRun5RaceKey() @race_horse.b.slice(Other_Data_Link_Key_Prebious_Run_5_Race_Key).force_encoding("utf-8") end
  def getBracketNumber() @race_horse.b.slice(Bracket_Number).force_encoding("utf-8") end
  def getReserveFive() @race_horse.b.slice(Reserve_Five).force_encoding("utf-8") end
  def getMarkCodeComposite() @race_horse.b.slice(Mark_Code_Composite).force_encoding("utf-8") end
  def getMarkCodeIdm() @race_horse.b.slice(Mark_Code_Idm).force_encoding("utf-8") end
  def getMarkCodeInfomation() @race_horse.b.slice(Mark_Code_Infomation).force_encoding("utf-8") end
  def getMarkCodeJockey() @race_horse.b.slice(Mark_Code_Jockey).force_encoding("utf-8") end
  def getMarkCodeRacingStable() @race_horse.b.slice(Mark_Code_Racing_Stable).force_encoding("utf-8") end
  def getMarkCodeTrainer() @race_horse.b.slice(Mark_Code_Trainer).force_encoding("utf-8") end
  def getMarkCodeRushing() @race_horse.b.slice(Mark_Code_Rushing).force_encoding("utf-8") end
  def getTurfAptitudeCode() @race_horse.b.slice(Turf_Aptitude_Code).force_encoding("utf-8") end
  def getDirtAptitudeCode() @race_horse.b.slice(Dirt_Aptitude_Code).force_encoding("utf-8") end
  def getJockeyCode() @race_horse.b.slice(Jockey_Code).force_encoding("utf-8") end
  def getTrainerCode() @race_horse.b.slice(Trainer_Code).force_encoding("utf-8") end
  def getReserveSix() @race_horse.b.slice(Reserve_Six).force_encoding("utf-8") end
  def getWinningPrize() @race_horse.b.slice(Winning_Prize).force_encoding("utf-8") end
  def getIncomePrize() @race_horse.b.slice(Income_Prize).force_encoding("utf-8") end
  def getConditionClass() @race_horse.b.slice(Condition_Class).force_encoding("utf-8") end
  def getExpansionForecastDataTenIndex() @race_horse.b.slice(Expansion_Forecast_Data_Ten_Index).force_encoding("utf-8") end
  def getExpansionForecastDataPaceIndex() @race_horse.b.slice(Expansion_Forecast_Data_Pace_Index).force_encoding("utf-8") end
  def getExpansionForecastDataRicingIndex() @race_horse.b.slice(Expansion_Forecast_Data_Ricing_Index).force_encoding("utf-8") end
  def getExpansionForecastDataPositionIndex() @race_horse.b.slice(Expansion_Forecast_Data_Position_Index).force_encoding("utf-8") end
  def getExpansionForecastDataPace() @race_horse.b.slice(Expansion_Forecast_Data_Pace).force_encoding("utf-8") end
  def getExpansionForecastDataHalfwayRanking() @race_horse.b.slice(Expansion_Forecast_Data_Halfway_Ranking).force_encoding("utf-8") end
  def getExpansionForecastDataHalfwayDifference() @race_horse.b.slice(Expansion_Forecast_Data_Halfway_Difference).force_encoding("utf-8") end
  def getExpansionForecastDataHalfwayInsideOutside() @race_horse.b.slice(Expansion_Forecast_Data_Halfway_Inside_Outside).force_encoding("utf-8") end
  def getExpansionForecastDataAfter3FTime() @race_horse.b.slice(Expansion_Forecast_Data_After_3F_Time).force_encoding("utf-8") end
  def getExpansionForecastDataAfter3FDifference() @race_horse.b.slice(Expansion_Forecast_Data_After_3F_Difference).force_encoding("utf-8") end
  def getExpansionForecastDataAfter3FInsideOutside() @race_horse.b.slice(Expansion_Forecast_Data_After_3F_Inside_Outside).force_encoding("utf-8") end
  def getExpansionForecastDataGoalRanking() @race_horse.b.slice(Expansion_Forecast_Data_Goal_Ranking).force_encoding("utf-8") end
  def getExpansionForecastDataGoalDifference() @race_horse.b.slice(Expansion_Forecast_Data_Goal_Difference).force_encoding("utf-8") end
  def getExpansionForecastDataGoalInsideOutside() @race_horse.b.slice(Expansion_Forecast_Data_Goal_Inside_Outside).force_encoding("utf-8") end
  def getExpansionForecastDataExpansionSymbol() @race_horse.b.slice(Expansion_Forecast_Data_Expansion_Symbol).force_encoding("utf-8") end
  def getDistanceAptitudeTwo() @race_horse.b.slice(Distance_Aptitude_Two).force_encoding("utf-8") end
  def getHorseWeightFixed () @race_horse.b.slice(Horse_Weight_Fixed ).force_encoding("utf-8") end
  def getHorseWeightGainFixed () @race_horse.b.slice(Horse_Weight_Gain_Fixed ).force_encoding("utf-8") end
  def getCancelFlg() @race_horse.b.slice(Cancel_Flg).force_encoding("utf-8") end
  def getGenderCode() @race_horse.b.slice(Gender_Code).force_encoding("utf-8") end
  def getOwnerName() @race_horse.b.slice(Owner_Name).force_encoding("utf-8") end
  def getOwnerBelongCode() @race_horse.b.slice(Owner_Belong_Code).force_encoding("utf-8") end
  def getHorseSymbolCode() @race_horse.b.slice(Horse_Symbol_Code).force_encoding("utf-8") end
  def getRushingRunking() @race_horse.b.slice(Rushing_Runking).force_encoding("utf-8") end
  def getLsIndexRunking() @race_horse.b.slice(Ls_Index_Runking).force_encoding("utf-8") end
  def getTenIndexRunking() @race_horse.b.slice(Ten_Index_Runking).force_encoding("utf-8") end
  def getPaceIndexRunking() @race_horse.b.slice(Pace_Index_Runking).force_encoding("utf-8") end
  def getRisingIndexRunking() @race_horse.b.slice(Rising_Index_Runking).force_encoding("utf-8") end
  def getPositionIndexRunking() @race_horse.b.slice(Position_Index_Runking).force_encoding("utf-8") end
  def getJockeyExpectationVictoryRate() @race_horse.b.slice(Jockey_Expectation_Victory_Rate).force_encoding("utf-8") end
  def getJockeyExpectation3InsideRate() @race_horse.b.slice(Jockey_Expectation_3_Inside_Rate).force_encoding("utf-8") end
  def getTransportationClass() @race_horse.b.slice(Transportation_Class).force_encoding("utf-8") end
  def getExercise() @race_horse.b.slice(Exercise).force_encoding("utf-8") end
  def getBodyType() @race_horse.b.slice(Body_Type).force_encoding("utf-8") end
  def getTotalBodyTypeOne() @race_horse.b.slice(Total_Body_Type_One).force_encoding("utf-8") end
  def getTotalBodyTypeTwo() @race_horse.b.slice(Total_Body_Type_Two).force_encoding("utf-8") end
  def getTotalBodyTypeThree() @race_horse.b.slice(Total_Body_Type_Three).force_encoding("utf-8") end
  def getHorseSpecialMentionOne() @race_horse.b.slice(Horse_Special_Mention_One).force_encoding("utf-8") end
  def getHorseSpecialMentionTwo() @race_horse.b.slice(Horse_Special_Mention_Two).force_encoding("utf-8") end
  def getHorseSpecialMentionThree() @race_horse.b.slice(Horse_Special_Mention_Three).force_encoding("utf-8") end
  def getHorseStartIndex() @race_horse.b.slice(Horse_Start_Index).force_encoding("utf-8") end
  def getHorseDepartureRate() @race_horse.b.slice(Horse_Departure_Rate).force_encoding("utf-8") end
  def getRunningBeforeReference() @race_horse.b.slice(Running_Before_Reference).force_encoding("utf-8") end
  def getReferenceRidingJockeyCode() @race_horse.b.slice(Reference_Riding_Jockey_Code).force_encoding("utf-8") end
  def getTenThousandTicketIndex() @race_horse.b.slice(Ten_Thousand_Ticket_Index).force_encoding("utf-8") end
  def getTenThousandTicketMark() @race_horse.b.slice(Ten_Thousand_Ticket_Mark).force_encoding("utf-8") end
  def getDownClassFlg() @race_horse.b.slice(Down_Class_Flg).force_encoding("utf-8") end
  def getRushingType() @race_horse.b.slice(Rushing_Type).force_encoding("utf-8") end
  def getRecreationReasonCode() @race_horse.b.slice(Recreation_Reason_Code).force_encoding("utf-8") end
  def getFlg() @race_horse.b.slice(Flg).force_encoding("utf-8") end
  def getRacingStableRunningTimes() @race_horse.b.slice(Racing_Stable_Running_Times).force_encoding("utf-8") end
  def getRacingStableYmd() @race_horse.b.slice(Racing_Stable_Ymd).force_encoding("utf-8") end
  def getRacingStableDays() @race_horse.b.slice(Racing_Stable_Days).force_encoding("utf-8") end
  def getGrazingDestination() @race_horse.b.slice(Grazing_Destination).force_encoding("utf-8") end
  def getGrazingDestinationRank() @race_horse.b.slice(Grazing_Destination_Rank).force_encoding("utf-8") end
  def getRacingStableRank() @race_horse.b.slice(Racing_Stable_Rank).force_encoding("utf-8") end
end


