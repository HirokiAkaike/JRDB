#払戻金データを抽出するためのヘルパー
class DisassembleRefundBetTicket
  #レースキー
  RACE_KEY_COURSE_CODE = (0..1)
  RACE_KEY_YEAR = (2..3)
  RACE_KEY_TIMES = 4
  RACE_KEY_DAY = 5
  RACE_KEY_NUMBER_OF_RACE = (6..7)
  #単勝
  WIN_HORSE_NUMBER_1 = (8..9)
  WIN_ODDS_1 = 0
  WIN_HORSE_NUMBER_2 = 0
  WIN_ODDS_2 = 0
  WIN_HORSE_NUMBER_3 = 0
  WIN_ODDS_3 = 0
  #複勝
  SHOW_HORSE_NUMBER_1 = 0
  SHOW_ODDS_1 = 0
  SHOW_HORSE_NUMBER_2 = 0
  SHOW_ODDS_2 = 0
  SHOW_HORSE_NUMBER_3 = 0
  SHOW_ODDS_3 = 0
  SHOW_HORSE_NUMBER_4 = 0
  SHOW_ODDS_4 = 0
  SHOW_HORSE_NUMBER_5 = 0
  SHOW_ODDS_5 = 0
  #枠連
  BRACKET_EXACTA_1_NUMBER_1 = 0
  BRACKET_EXACTA_1_NUMBER_2 = 0
  BRACKET_EXACTA_1_ODDS = 0
  BRACKET_EXACTA_2_NUMBER_1 = 0
  BRACKET_EXACTA_2_NUMBER_2 = 0
  BRACKET_EXACTA_2_ODDS = 0
  BRACKET_EXACTA_3_NUMBER_1 = 0
  BRACKET_EXACTA_3_NUMBER_2 = 0
  BRACKET_EXACTA_3_ODDS = 0
  #馬連
  QUINELLA_1_HORSE_NUMBER_1 = 0
  QUINELLA_1_HORSE_NUMBER_2 = 0
  QUINELLA_1_ODDS = 0
  QUINELLA_2_HORSE_NUMBER_1 = 0
  QUINELLA_2_HORSE_NUMBER_2 = 0
  QUINELLA_2_ODDS = 0
  QUINELLA_3_HORSE_NUMBER_1 = 0
  QUINELLA_3_HORSE_NUMBER_2 = 0
  QUINELLA_3_ODDS = 0
  #ワイド
  QUINELLA_PLACE_1_HORSE_NUMBER_1 = 0
  QUINELLA_PLACE_1_HORSE_NUMBER_2 = 0
  QUINELLA_PLACE_1_ODDS = 0
  QUINELLA_PLACE_2_HORSE_NUMBER_1 = 0
  QUINELLA_PLACE_2_HORSE_NUMBER_2 = 0
  QUINELLA_PLACE_2_ODDS = 0
  QUINELLA_PLACE_3_HORSE_NUMBER_1 = 0
  QUINELLA_PLACE_3_HORSE_NUMBER_2 = 0
  QUINELLA_PLACE_3_ODDS = 0
  QUINELLA_PLACE_4_HORSE_NUMBER_1 = 0
  QUINELLA_PLACE_4_HORSE_NUMBER_2 = 0
  QUINELLA_PLACE_4_ODDS = 0
  QUINELLA_PLACE_5_HORSE_NUMBER_1 = 0
  QUINELLA_PLACE_5_HORSE_NUMBER_2 = 0
  QUINELLA_PLACE_5_ODDS = 0
  QUINELLA_PLACE_6_HORSE_NUMBER_1 = 0
  QUINELLA_PLACE_6_HORSE_NUMBER_2 = 0
  QUINELLA_PLACE_6_ODDS = 0
  QUINELLA_PLACE_7_HORSE_NUMBER_1 = 0
  QUINELLA_PLACE_7_HORSE_NUMBER_2 = 0
  QUINELLA_PLACE_7_ODDS = 0
  #馬単
  EXACTA_1_HORSE_NUMBER_1 = 0
  EXACTA_1_HORSE_NUMBER_2 = 0
  EXACTA_1_ODDS = 0
  EXACTA_2_HORSE_NUMBER_1 = 0
  EXACTA_2_HORSE_NUMBER_2 = 0
  EXACTA_2_ODDS = 0
  EXACTA_3_HORSE_NUMBER_1 = 0
  EXACTA_3_HORSE_NUMBER_2 = 0
  EXACTA_3_ODDS = 0
  EXACTA_4_HORSE_NUMBER_1 = 0
  EXACTA_4_HORSE_NUMBER_2 = 0
  EXACTA_4_ODDS = 0
  EXACTA_5_HORSE_NUMBER_1 = 0
  EXACTA_5_HORSE_NUMBER_2 = 0
  EXACTA_5_ODDS = 0
  EXACTA_6_HORSE_NUMBER_1 = 0
  EXACTA_6_HORSE_NUMBER_2 = 0
  EXACTA_6_ODDS = 0
  #3連複
  TRIO_1_HORSE_NUMBER_1 = 0
  TRIO_1_HORSE_NUMBER_2 = 0
  TRIO_1_HORSE_NUMBER_3 = 0
  TRIO_1_ODDS = 0
  TRIO_2_HORSE_NUMBER_1 = 0
  TRIO_2_HORSE_NUMBER_2 = 0
  TRIO_2_HORSE_NUMBER_3 = 0
  TRIO_2_ODDS = 0
  TRIO_3_HORSE_NUMBER_1 = 0
  TRIO_3_HORSE_NUMBER_2 = 0
  TRIO_3_HORSE_NUMBER_3 = 0
  TRIO_3_ODDS = 0
  #3連単
  TRIFECTA_1_HORSE_NUMBER_1 = 0
  TRIFECTA_1_HORSE_NUMBER_2 = 0
  TRIFECTA_1_HORSE_NUMBER_3 = 0
  TRIFECTA_1_ODDS = 0
  TRIFECTA_2_HORSE_NUMBER_1 = 0
  TRIFECTA_2_HORSE_NUMBER_2 = 0
  TRIFECTA_2_HORSE_NUMBER_3 = 0
  TRIFECTA_2_ODDS = 0
  TRIFECTA_3_HORSE_NUMBER_1 = 0
  TRIFECTA_3_HORSE_NUMBER_2 = 0
  TRIFECTA_3_HORSE_NUMBER_3 = 0
  TRIFECTA_3_ODDS = 0
  TRIFECTA_4_HORSE_NUMBER_1 = 0
  TRIFECTA_4_HORSE_NUMBER_2 = 0
  TRIFECTA_4_HORSE_NUMBER_3 = 0
  TRIFECTA_4_ODDS = 0
  TRIFECTA_5_HORSE_NUMBER_1 = 0
  TRIFECTA_5_HORSE_NUMBER_2 = 0
  TRIFECTA_5_HORSE_NUMBER_3 = 0
  TRIFECTA_5_ODDS = 0
  TRIFECTA_6_HORSE_NUMBER_1 = 0
  TRIFECTA_6_HORSE_NUMBER_2 = 0
  TRIFECTA_6_HORSE_NUMBER_3 = 0
  TRIFECTA_6_ODDS = 0

  def initialize(refundBetTicket)
    @refundBetTicket = refundBetTicket
  end

  #開催競馬場コードを取得する
  def getRaceCourseCode
    @refundBetTicket.b.slice(RACE_KEY_COURSE_CODE).force_encoding("utf-8")
  end

  #開催年を取得する
  def getYearCode
    @refundBetTicket.b.slice(RACE_KEY_YEAR).force_encoding("utf-8")
  end

  #競馬場ごとの回を取得する
  def getTimesCode
    @refundBetTicket.b.slice(RACE_KEY_TIMES).force_encoding("utf-8")
  end

  #競馬場ごとの日目を取得する
  def getDayCode
    @refundBetTicket.b.slice(RACE_KEY_DAY).force_encoding("utf-8")
  end

  #レース番号を取得する
  def getNumberOfRace
    @refundBetTicket.b.slice(RACE_KEY_NUMBER_OF_RACE).force_encoding("utf-8")
  end

  #馬番を取得する
  def getHorseNumber
    @refundBetTicket.b.slice(HORSE_NUMBER).force_encoding("utf-8")
  end

  def getWinHorseNumber_1
    @refundBetTicket.b.slice(WIN_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getWinOdds_1
    @refundBetTicket.b.slice(WIN_ODDS_1).force_encoding("utf-8")
  end

  def getWinHorseNumber_2
    @refundBetTicket.b.slice(WIN_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getWinOdds_2
    @refundBetTicket.b.slice(WIN_ODDS_2).force_encoding("utf-8")
  end

  def getWinHorseNumber_3
    @refundBetTicket.b.slice(WIN_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getWinOdds_3
    @refundBetTicket.b.slice(WIN_ODDS_3).force_encoding("utf-8")
  end

  def getShowHorseNumber_1
    @refundBetTicket.b.slice(SHOW_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getShowOdds_1
    @refundBetTicket.b.slice(SHOW_ODDS_1).force_encoding("utf-8")
  end

  def getShowHorseNumber_2
    @refundBetTicket.b.slice(SHOW_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getShowOdds_2
    @refundBetTicket.b.slice(SHOW_ODDS_2).force_encoding("utf-8")
  end

  def getShowHorseNumber_3
    @refundBetTicket.b.slice(SHOW_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getShowOdds_3
    @refundBetTicket.b.slice(SHOW_ODDS_3).force_encoding("utf-8")
  end

  def getShowHorseNumber_4
    @refundBetTicket.b.slice(SHOW_HORSE_NUMBER_4).force_encoding("utf-8")
  end

  def getShowOdds_4
    @refundBetTicket.b.slice(SHOW_ODDS_4).force_encoding("utf-8")
  end

  def getShowHorseNumber_5
    @refundBetTicket.b.slice(SHOW_HORSE_NUMBER_5).force_encoding("utf-8")
  end

  def getShowOdds_5
    @refundBetTicket.b.slice(SHOW_ODDS_5).force_encoding("utf-8")
  end

  def getBracketExacta_1_Number_1
    @refundBetTicket.b.slice(BRACKET_EXACTA_1_NUMBER_1).force_encoding("utf-8")
  end

  def getBracketExacta_1_Number_2
    @refundBetTicket.b.slice(BRACKET_EXACTA_1_NUMBER_2).force_encoding("utf-8")
  end

  def getBracketExacta_1_Odds
    @refundBetTicket.b.slice(BRACKET_EXACTA_1_ODDS).force_encoding("utf-8")
  end

  def getBracketExacta_2_Number_1
    @refundBetTicket.b.slice(BRACKET_EXACTA_2_NUMBER_1).force_encoding("utf-8")
  end

  def getBracketExacta_2_Number_2
    @refundBetTicket.b.slice(BRACKET_EXACTA_2_NUMBER_2).force_encoding("utf-8")
  end

  def getBracketExacta_2_Odds
    @refundBetTicket.b.slice(BRACKET_EXACTA_2_ODDS).force_encoding("utf-8")
  end

  def getBracketExacta_3_Number_1
    @refundBetTicket.b.slice(BRACKET_EXACTA_3_NUMBER_1).force_encoding("utf-8")
  end

  def getBracketExacta_3_Number_2
    @refundBetTicket.b.slice(BRACKET_EXACTA_3_NUMBER_2).force_encoding("utf-8")
  end

  def getBracketExacta_3_Odds
    @refundBetTicket.b.slice(BRACKET_EXACTA_3_ODDS).force_encoding("utf-8")
  end

  def getQuinella_1_HorseNumber_1
    @refundBetTicket.b.slice(QUINELLA_1_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getQuinella_1_HorseNumber_2
    @refundBetTicket.b.slice(QUINELLA_1_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getQuinella_1_Odds
    @refundBetTicket.b.slice(QUINELLA_1_ODDS).force_encoding("utf-8")
  end

  def getQuinella_2_HorseNumber_1
    @refundBetTicket.b.slice(QUINELLA_2_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getQuinella_2_HorseNumber_2
    @refundBetTicket.b.slice(QUINELLA_2_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getQuinella_2_Odds
    @refundBetTicket.b.slice(QUINELLA_2_ODDS).force_encoding("utf-8")
  end

  def getQuinella_3_HorseNumber_1
    @refundBetTicket.b.slice(QUINELLA_3_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getQuinella_3_HorseNumber_2
    @refundBetTicket.b.slice(QUINELLA_3_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getQuinella_3_Odds
    @refundBetTicket.b.slice(QUINELLA_3_ODDS).force_encoding("utf-8")
  end

  def getQuinellaPlace_1_HorseNumber_1
    @refundBetTicket.b.slice(QUINELLA_PLACE_1_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getQuinellaPlace_1_HorseNumber_2
    @refundBetTicket.b.slice(QUINELLA_PLACE_1_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getQuinellaPlace_1_Odds
    @refundBetTicket.b.slice(QUINELLA_PLACE_1_ODDS).force_encoding("utf-8")
  end

  def getQuinellaPlace_2_HorseNumber_1
    @refundBetTicket.b.slice(QUINELLA_PLACE_2_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getQuinellaPlace_2_HorseNumber_2
    @refundBetTicket.b.slice(QUINELLA_PLACE_2_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getQuinellaPlace_2_Odds
    @refundBetTicket.b.slice(QUINELLA_PLACE_2_ODDS).force_encoding("utf-8")
  end

  def getQuinellaPlace_3_HorseNumber_1
    @refundBetTicket.b.slice(QUINELLA_PLACE_3_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getQuinellaPlace_3_HorseNumber_2
    @refundBetTicket.b.slice(QUINELLA_PLACE_3_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getQuinellaPlace_3_Odds
    @refundBetTicket.b.slice(QUINELLA_PLACE_3_ODDS).force_encoding("utf-8")
  end

  def getQuinellaPlace_4_HorseNumber_1
    @refundBetTicket.b.slice(QUINELLA_PLACE_4_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getQuinellaPlace_4_HorseNumber_2
    @refundBetTicket.b.slice(QUINELLA_PLACE_4_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getQuinellaPlace_4_Odds
    @refundBetTicket.b.slice(QUINELLA_PLACE_4_ODDS).force_encoding("utf-8")
  end

  def getQuinellaPlace_5_HorseNumber_1
    @refundBetTicket.b.slice(QUINELLA_PLACE_5_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getQuinellaPlace_5_HorseNumber_2
    @refundBetTicket.b.slice(QUINELLA_PLACE_5_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getQuinellaPlace_5_Odds
    @refundBetTicket.b.slice(QUINELLA_PLACE_5_ODDS).force_encoding("utf-8")
  end

  def getQuinellaPlace_6_HorseNumber_1
    @refundBetTicket.b.slice(QUINELLA_PLACE_6_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getQuinellaPlace_6_HorseNumber_2
    @refundBetTicket.b.slice(QUINELLA_PLACE_6_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getQuinellaPlace_6_Odds
    @refundBetTicket.b.slice(QUINELLA_PLACE_6_ODDS).force_encoding("utf-8")
  end

  def getQuinellaPlace_7_HorseNumber_1
    @refundBetTicket.b.slice(QUINELLA_PLACE_7_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getQuinellaPlace_7_HorseNumber_2
    @refundBetTicket.b.slice(QUINELLA_PLACE_7_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getQuinellaPlace_7_Odds
    @refundBetTicket.b.slice(QUINELLA_PLACE_7_ODDS).force_encoding("utf-8")
  end

  def getExacta_1_HorseNumber_1
    @refundBetTicket.b.slice(EXACTA_1_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getExacta_1_HorseNumber_2
    @refundBetTicket.b.slice(EXACTA_1_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getExacta_1_Odds
    @refundBetTicket.b.slice(EXACTA_1_ODDS).force_encoding("utf-8")
  end

  def getExacta_2_HorseNumber_1
    @refundBetTicket.b.slice(EXACTA_2_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getExacta_2_HorseNumber_2
    @refundBetTicket.b.slice(EXACTA_2_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getExacta_2_Odds
    @refundBetTicket.b.slice(EXACTA_2_ODDS).force_encoding("utf-8")
  end

  def getExacta_3_HorseNumber_1
    @refundBetTicket.b.slice(EXACTA_3_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getExacta_3_HorseNumber_2
    @refundBetTicket.b.slice(EXACTA_3_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getExacta_3_Odds
    @refundBetTicket.b.slice(EXACTA_3_ODDS).force_encoding("utf-8")
  end

  def getExacta_4_HorseNumber_1
    @refundBetTicket.b.slice(EXACTA_4_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getExacta_4_HorseNumber_2
    @refundBetTicket.b.slice(EXACTA_4_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getExacta_4_Odds
    @refundBetTicket.b.slice(EXACTA_4_ODDS).force_encoding("utf-8")
  end

  def getExacta_5_HorseNumber_1
    @refundBetTicket.b.slice(EXACTA_5_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getExacta_5_HorseNumber_2
    @refundBetTicket.b.slice(EXACTA_5_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getExacta_5_Odds
    @refundBetTicket.b.slice(EXACTA_5_ODDS).force_encoding("utf-8")
  end

  def getExacta_6_HorseNumber_1
    @refundBetTicket.b.slice(EXACTA_6_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getExacta_6_HorseNumber_2
    @refundBetTicket.b.slice(EXACTA_6_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getExacta_6_Odds
    @refundBetTicket.b.slice(EXACTA_6_ODDS).force_encoding("utf-8")
  end

  def getTrio_1_HorseNumber_1
    @refundBetTicket.b.slice(TRIO_1_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getTrio_1_HorseNumber_2
    @refundBetTicket.b.slice(TRIO_1_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getTrio_1_HorseNumber_3
    @refundBetTicket.b.slice(TRIO_1_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getTrio_1_Odds
    @refundBetTicket.b.slice(TRIO_1_ODDS).force_encoding("utf-8")
  end

  def getTrio_2_HorseNumber_1
    @refundBetTicket.b.slice(TRIO_2_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getTrio_2_HorseNumber_2
    @refundBetTicket.b.slice(TRIO_2_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getTrio_2_HorseNumber_3
    @refundBetTicket.b.slice(TRIO_2_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getTrio_2_Odds
    @refundBetTicket.b.slice(TRIO_2_ODDS).force_encoding("utf-8")
  end

  def getTrio_3_HorseNumber_1
    @refundBetTicket.b.slice(TRIO_3_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getTrio_3_HorseNumber_2
    @refundBetTicket.b.slice(TRIO_3_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getTrio_3_HorseNumber_3
    @refundBetTicket.b.slice(TRIO_3_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getTrio_3_Odds
    @refundBetTicket.b.slice(TRIO_3_ODDS).force_encoding("utf-8")
  end

  def getTrifecta_1_HorseNumber_1
    @refundBetTicket.b.slice(TRIFECTA_1_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getTrifecta_1_HorseNumber_2
    @refundBetTicket.b.slice(TRIFECTA_1_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getTrifecta_1_HorseNumber_3
    @refundBetTicket.b.slice(TRIFECTA_1_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getTrifecta_1_Odds
    @refundBetTicket.b.slice(TRIFECTA_1_ODDS).force_encoding("utf-8")
  end

  def getTrifecta_2_HorseNumber_1
    @refundBetTicket.b.slice(TRIFECTA_2_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getTrifecta_2_HorseNumber_2
    @refundBetTicket.b.slice(TRIFECTA_2_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getTrifecta_2_HorseNumber_3
    @refundBetTicket.b.slice(TRIFECTA_2_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getTrifecta_2_Odds
    @refundBetTicket.b.slice(TRIFECTA_2_ODDS).force_encoding("utf-8")
  end

  def getTrifecta_3_HorseNumber_1
    @refundBetTicket.b.slice(TRIFECTA_3_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getTrifecta_3_HorseNumber_2
    @refundBetTicket.b.slice(TRIFECTA_3_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getTrifecta_3_HorseNumber_3
    @refundBetTicket.b.slice(TRIFECTA_3_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getTrifecta_3_Odds
    @refundBetTicket.b.slice(TRIFECTA_3_ODDS).force_encoding("utf-8")
  end

  def getTrifecta_4_HorseNumber_1
    @refundBetTicket.b.slice(TRIFECTA_4_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getTrifecta_4_HorseNumber_2
    @refundBetTicket.b.slice(TRIFECTA_4_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getTrifecta_4_HorseNumber_3
    @refundBetTicket.b.slice(TRIFECTA_4_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getTrifecta_4_Odds
    @refundBetTicket.b.slice(TRIFECTA_4_ODDS).force_encoding("utf-8")
  end

  def getTrifecta_5_HorseNumber_1
    @refundBetTicket.b.slice(TRIFECTA_5_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getTrifecta_5_HorseNumber_2
    @refundBetTicket.b.slice(TRIFECTA_5_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getTrifecta_5_HorseNumber_3
    @refundBetTicket.b.slice(TRIFECTA_5_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getTrifecta_5_Odds
    @refundBetTicket.b.slice(TRIFECTA_5_ODDS).force_encoding("utf-8")
  end

  def getTrifecta_6_HorseNumber_1
    @refundBetTicket.b.slice(TRIFECTA_6_HORSE_NUMBER_1).force_encoding("utf-8")
  end

  def getTrifecta_6_HorseNumber_2
    @refundBetTicket.b.slice(TRIFECTA_6_HORSE_NUMBER_2).force_encoding("utf-8")
  end

  def getTrifecta_6_HorseNumber_3
    @refundBetTicket.b.slice(TRIFECTA_6_HORSE_NUMBER_3).force_encoding("utf-8")
  end

  def getTrifecta_6_Odds
    @refundBetTicket.b.slice(TRIFECTA_6_ODDS).force_encoding("utf-8")
  end

end