class DisassembleTrainerData
  Trainer_Code = (0..4)
  Deregistration_Flag = 5
  De_Registration_Date = (6..13)
  Trainer_Name = (14..25)
  Trainer_Kana = (26..55)
  Trainer_Name_Abbreviation = (56..61)
  Affiliation_Code = 62
  It_Belongs_To_The_Region_Name = (63..66)
  Birthday = (67..74)
  The_First_License_Year = (75..78)
  Trainer_Comments = (79..118)
  Comments_Input_Date = (119..126)
  This_Year_Leading = (127..129)
  This_Year_Flat_Results = (130..141)
  This_Year_Failure_Results = (142..153)
  This_Year_The_Number_Of_Special_Wins = (154..156)
  This_Year_Stakes_Number_Of_Wins = (157..159)
  Last_Year_Leading = (160..162)
  Last_Year_Flat_Results = (163..174)
  Last_Year_Failure_Results = (175..186)
  Special_Wins_The_Number_Of_Last_Year = (187..189)
  Stakes_Number_Of_Wins_Last_Year = (190..192)
  Total_Flat_Results = (193..212)
  Total_Failure_Results = (213..232)
  Data_Date = (233..240)


  def initialize(trainer_data)
    @trainer_data = trainer_data
  end

  def getTrainerCode() @trainer_data.b.slice(Trainer_Code).force_encoding("utf-8") end
  def getDeregistrationFlag() @trainer_data.b.slice(Deregistration_Flag).force_encoding("utf-8") end
  def getDeRegistrationDate() @trainer_data.b.slice(De_Registration_Date).force_encoding("utf-8") end
  def getTrainerName() @trainer_data.b.slice(Trainer_Name).force_encoding("utf-8") end
  def getTrainerKana() @trainer_data.b.slice(Trainer_Kana).force_encoding("utf-8") end
  def getTrainerNameAbbreviation() @trainer_data.b.slice(Trainer_Name_Abbreviation).force_encoding("utf-8") end
  def getAffiliationCode() @trainer_data.b.slice(Affiliation_Code).force_encoding("utf-8") end
  def getItBelongsToTheRegionName() @trainer_data.b.slice(It_Belongs_To_The_Region_Name).force_encoding("utf-8") end
  def getBirthday() @trainer_data.b.slice(Birthday).force_encoding("utf-8") end
  def getTheFirstLicenseYear() @trainer_data.b.slice(The_First_License_Year).force_encoding("utf-8") end
  def getTrainerComments() @trainer_data.b.slice(Trainer_Comments).force_encoding("utf-8") end
  def getCommentsInputDate() @trainer_data.b.slice(Comments_Input_Date).force_encoding("utf-8") end
  def getThisYearLeading() @trainer_data.b.slice(This_Year_Leading).force_encoding("utf-8") end
  def getThisYearFlatResults() @trainer_data.b.slice(This_Year_Flat_Results).force_encoding("utf-8") end
  def getThisYearFailureResults() @trainer_data.b.slice(This_Year_Failure_Results).force_encoding("utf-8") end
  def getThisYearTheNumberOfSpecialWins() @trainer_data.b.slice(This_Year_The_Number_Of_Special_Wins).force_encoding("utf-8") end
  def getThisYearStakesNumberOfWins() @trainer_data.b.slice(This_Year_Stakes_Number_Of_Wins).force_encoding("utf-8") end
  def getLastYearLeading() @trainer_data.b.slice(Last_Year_Leading).force_encoding("utf-8") end
  def getLastYearFlatResults() @trainer_data.b.slice(Last_Year_Flat_Results).force_encoding("utf-8") end
  def getLastYearFailureResults() @trainer_data.b.slice(Last_Year_Failure_Results).force_encoding("utf-8") end
  def getSpecialWinsTheNumberOfLastYear() @trainer_data.b.slice(Special_Wins_The_Number_Of_Last_Year).force_encoding("utf-8") end
  def getStakesNumberOfWinsLastYear() @trainer_data.b.slice(Stakes_Number_Of_Wins_Last_Year).force_encoding("utf-8") end
  def getTotalFlatResults() @trainer_data.b.slice(Total_Flat_Results).force_encoding("utf-8") end
  def getTotalFailureResults() @trainer_data.b.slice(Total_Failure_Results).force_encoding("utf-8") end
  def getDataDate() @trainer_data.b.slice(Data_Date).force_encoding("utf-8") end

end


