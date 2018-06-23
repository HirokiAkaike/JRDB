class DisassembleJockeyData

  Jockey_Code = (0..4)
  Deregistration_Flag = 5
  Deregistration_Date = (6..13)
  Jockey_Name = (14..25)
  Jockey_Kana = (26..55)
  Jockey_Name_Abbreviation = (56..61)
  Affiliation_Code = 62
  It_Belongs_To_The_Region_Name = (63..66)
  Birthday = (67..74)
  The_First_License_Year = (75..78)
  Apprentice_Division = 79
  Affiliation_Stables = (80..84)
  Jockey_Comment = (85..124)
  Comments_Input_Date = (125..132)
  This_Year_Leading = (133..135)
  This_Year_Flat_Results = (136..147)
  This_Year_Failure_Results = (148..159)
  This_Year_The_Number_Of_Special_Wins = (160..162)
  This_Year_Stakes_Number_Of_Wins = (163..165)
  Last_Year_Leading = (166..168)
  Last_Year_Flat_Results = (169..180)
  Last_Year_Failure_Results = (181..192)
  Special_Wins_The_Number_Of_Last_Year = (193..195)
  Stakes_Number_Of_Wins_Last_Year = (196..198)
  Total_Flat_Results = (199..218)
  Total_Failure_Results = (219..238)
  Data_Date = (239..246)

  def initialize(jockey_data)
    @jockey_data = jockey_data
  end

  def getJockeyCode() @jockey_data.b.slice(Jockey_Code).force_encoding("utf-8") end
  def getDeregistrationFlag() @jockey_data.b.slice(Deregistration_Flag).force_encoding("utf-8") end
  def getDeregistrationDate() @jockey_data.b.slice(Deregistration_Date).force_encoding("utf-8") end
  def getJockeyName() @jockey_data.b.slice(Jockey_Name).force_encoding("utf-8") end
  def getJockeyKana() @jockey_data.b.slice(Jockey_Kana).force_encoding("utf-8") end
  def getJockeyNameAbbreviation() @jockey_data.b.slice(Jockey_Name_Abbreviation).force_encoding("utf-8") end
  def getAffiliationCode() @jockey_data.b.slice(Affiliation_Code).force_encoding("utf-8") end
  def getItBelongsToTheRegionName() @jockey_data.b.slice(It_Belongs_To_The_Region_Name).force_encoding("utf-8") end
  def getBirthday() @jockey_data.b.slice(Birthday).force_encoding("utf-8") end
  def getTheFirstLicenseYear() @jockey_data.b.slice(The_First_License_Year).force_encoding("utf-8") end
  def getApprenticeDivision() @jockey_data.b.slice(Apprentice_Division).force_encoding("utf-8") end
  def getAffiliationStables() @jockey_data.b.slice(Affiliation_Stables).force_encoding("utf-8") end
  def getJockeyComment() @jockey_data.b.slice(Jockey_Comment).force_encoding("utf-8") end
  def getCommentsInputDate() @jockey_data.b.slice(Comments_Input_Date).force_encoding("utf-8") end
  def getThisYearLeading() @jockey_data.b.slice(This_Year_Leading).force_encoding("utf-8") end
  def getThisYearFlatResults() @jockey_data.b.slice(This_Year_Flat_Results).force_encoding("utf-8") end
  def getThisYearFailureResults() @jockey_data.b.slice(This_Year_Failure_Results).force_encoding("utf-8") end
  def getThisYearTheNumberOfSpecialWins() @jockey_data.b.slice(This_Year_The_Number_Of_Special_Wins).force_encoding("utf-8") end
  def getThisYearStakesNumberOfWins() @jockey_data.b.slice(This_Year_Stakes_Number_Of_Wins).force_encoding("utf-8") end
  def getLastYearLeading() @jockey_data.b.slice(Last_Year_Leading).force_encoding("utf-8") end
  def getLastYearFlatResults() @jockey_data.b.slice(Last_Year_Flat_Results).force_encoding("utf-8") end
  def getLastYearFailureResults() @jockey_data.b.slice(Last_Year_Failure_Results).force_encoding("utf-8") end
  def getSpecialWinsTheNumberOfLastYear() @jockey_data.b.slice(Special_Wins_The_Number_Of_Last_Year).force_encoding("utf-8") end
  def getStakesNumberOfWinsLastYear() @jockey_data.b.slice(Stakes_Number_Of_Wins_Last_Year).force_encoding("utf-8") end
  def getTotalFlatResults() @jockey_data.b.slice(Total_Flat_Results).force_encoding("utf-8") end
  def getTotalFailureResults() @jockey_data.b.slice(Total_Failure_Results).force_encoding("utf-8") end
  def getDataDate() @jockey_data.b.slice(Data_Date).force_encoding("utf-8") end

end


