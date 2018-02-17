class DisassembleJrdbInformation
  Race_Key_Course_Code = (0..1)
  Race_Key_Year = (2..3)
  Race_Key_Times = 4
  Race_Key_Day = 5
  Race_Key_Number_Of_Race = (6..7)
  Race_Horse_Number = (8..9)
  Pedigree_Register_Code = (10..17)
  Horse_Name = (18..53)
  Standard_Odds = (54..58)
  Standard_Show_Odds = (59..63)
  Cid_Training_Point = (64..68)
  Cid_Racing_Stable_Point = (69..73)
  Cid_Point = (74..78)
  Cid = (79..81)
  Ls_Index = (82..86)
  Ls_Evaluation = 87
  Em = 88
  Racing_Stable_Bb_Mark = 89
  Racing_Stable_Bb_Win_Recovery_Rate = (90..94)
  Racing_Stable_Bb_Quinella_Rate = (95..99)
  Jockey_Bb_Mark = 100
  Jockey_Bb_Win_Recovery_Rate = (101..105)
  Jockey_Bb_Quinella_Rate = (106..110)

  def initialize(jrdb_information)
    @jrdb_information = jrdb_information
  end

  def getRaceKeyCourseCode() @jrdb_information.b.slice(Race_Key_Course_Code).force_encoding("utf-8") end
  def getRaceKeyYear() @jrdb_information.b.slice(Race_Key_Year).force_encoding("utf-8") end
  def getRaceKeyTimes() @jrdb_information.b.slice(Race_Key_Times).force_encoding("utf-8") end
  def getRaceKeyDay() @jrdb_information.b.slice(Race_Key_Day).force_encoding("utf-8") end
  def getRaceKeyNumberOfRace() @jrdb_information.b.slice(Race_Key_Number_Of_Race).force_encoding("utf-8") end
  def getRaceHorseNumber() @jrdb_information.b.slice(Race_Horse_Number).force_encoding("utf-8") end
  def getPedigreeRegisterCode() @jrdb_information.b.slice(Pedigree_Register_Code).force_encoding("utf-8") end
  def getHorseName() @jrdb_information.b.slice(Horse_Name).force_encoding("utf-8") end
  def getStandardOdds() @jrdb_information.b.slice(Standard_Odds).force_encoding("utf-8") end
  def getStandardShowOdds() @jrdb_information.b.slice(Standard_Show_Odds).force_encoding("utf-8") end
  def getCidTrainingPoint() @jrdb_information.b.slice(Cid_Training_Point).force_encoding("utf-8") end
  def getCidRacingStablePoint() @jrdb_information.b.slice(Cid_Racing_Stable_Point).force_encoding("utf-8") end
  def getCidPoint() @jrdb_information.b.slice(Cid_Point).force_encoding("utf-8") end
  def getCid() @jrdb_information.b.slice(Cid).force_encoding("utf-8") end
  def getLsIndex() @jrdb_information.b.slice(Ls_Index).force_encoding("utf-8") end
  def getLsEvaluation() @jrdb_information.b.slice(Ls_Evaluation).force_encoding("utf-8") end
  def getEm() @jrdb_information.b.slice(Em).force_encoding("utf-8") end
  def getRacingStableBbMark() @jrdb_information.b.slice(Racing_Stable_Bb_Mark).force_encoding("utf-8") end
  def getRacingStableBbWinRecoveryRate() @jrdb_information.b.slice(Racing_Stable_Bb_Win_Recovery_Rate).force_encoding("utf-8") end
  def getRacingStableBbQuinellaRate() @jrdb_information.b.slice(Racing_Stable_Bb_Quinella_Rate).force_encoding("utf-8") end
  def getJockeyBbMark() @jrdb_information.b.slice(Jockey_Bb_Mark).force_encoding("utf-8") end
  def getJockeyBbWinRecoveryRate() @jrdb_information.b.slice(Jockey_Bb_Win_Recovery_Rate).force_encoding("utf-8") end
  def getJockeyBbQuinellaRate() @jrdb_information.b.slice(Jockey_Bb_Quinella_Rate).force_encoding("utf-8") end
end


