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
  WIN_ODDS_1 = (10..16)
  WIN_HORSE_NUMBER_2 = (17..18)
  WIN_ODDS_2 = (19..25)
  WIN_HORSE_NUMBER_3 = (26..27)
  WIN_ODDS_3 = (28..34)
  #複勝
  SHOW_HORSE_NUMBER_1 = (35..36)
  SHOW_ODDS_1 = (37..43)
  SHOW_HORSE_NUMBER_2 = (44..45)
  SHOW_ODDS_2 = (46..52)
  SHOW_HORSE_NUMBER_3 = (53..54)
  SHOW_ODDS_3 = (55..61)
  SHOW_HORSE_NUMBER_4 = (62..63)
  SHOW_ODDS_4 = (64..70)
  SHOW_HORSE_NUMBER_5 = (71..72)
  SHOW_ODDS_5 = (73..79)
  #枠連
  BRACKET_EXACTA_1_NUMBER_1 = 80
  BRACKET_EXACTA_1_NUMBER_2 = 81
  BRACKET_EXACTA_1_ODDS = (82..88)
  BRACKET_EXACTA_2_NUMBER_1 = 89
  BRACKET_EXACTA_2_NUMBER_2 = 90
  BRACKET_EXACTA_2_ODDS = (91..97)
  BRACKET_EXACTA_3_NUMBER_1 = 98
  BRACKET_EXACTA_3_NUMBER_2 = 99
  BRACKET_EXACTA_3_ODDS = (100..106)
  #馬連
  QUINELLA_1_HORSE_NUMBER_1 = (107..108)
  QUINELLA_1_HORSE_NUMBER_2 = (109..110)
  QUINELLA_1_ODDS = (111..118)
  QUINELLA_2_HORSE_NUMBER_1 = (119..120)
  QUINELLA_2_HORSE_NUMBER_2 = (121..122)
  QUINELLA_2_ODDS = (123..130)
  QUINELLA_3_HORSE_NUMBER_1 = (131..132)
  QUINELLA_3_HORSE_NUMBER_2 = (133..134)
  QUINELLA_3_ODDS = (135..142)
  #ワイド
  QUINELLA_PLACE_1_HORSE_NUMBER_1 = (143..144)
  QUINELLA_PLACE_1_HORSE_NUMBER_2 = (145..146)
  QUINELLA_PLACE_1_ODDS = (147..154)
  QUINELLA_PLACE_2_HORSE_NUMBER_1 = (155..156)
  QUINELLA_PLACE_2_HORSE_NUMBER_2 = (157..158)
  QUINELLA_PLACE_2_ODDS = (159..166)
  QUINELLA_PLACE_3_HORSE_NUMBER_1 = (167..168)
  QUINELLA_PLACE_3_HORSE_NUMBER_2 = (169..170)
  QUINELLA_PLACE_3_ODDS = (171..178)
  QUINELLA_PLACE_4_HORSE_NUMBER_1 = (179..180)
  QUINELLA_PLACE_4_HORSE_NUMBER_2 = (181..182)
  QUINELLA_PLACE_4_ODDS = (183..190)
  QUINELLA_PLACE_5_HORSE_NUMBER_1 = (191..192)
  QUINELLA_PLACE_5_HORSE_NUMBER_2 = (193..194)
  QUINELLA_PLACE_5_ODDS = (195..202)
  QUINELLA_PLACE_6_HORSE_NUMBER_1 = (203..204)
  QUINELLA_PLACE_6_HORSE_NUMBER_2 = (205..206)
  QUINELLA_PLACE_6_ODDS = (207..214)
  QUINELLA_PLACE_7_HORSE_NUMBER_1 = (215..216)
  QUINELLA_PLACE_7_HORSE_NUMBER_2 = (217..218)
  QUINELLA_PLACE_7_ODDS = (219..226)
  #馬単
  EXACTA_1_HORSE_NUMBER_1 = (227..228)
  EXACTA_1_HORSE_NUMBER_2 = (229..230)
  EXACTA_1_ODDS = (231..238)
  EXACTA_2_HORSE_NUMBER_1 = (239..240)
  EXACTA_2_HORSE_NUMBER_2 = (241..242)
  EXACTA_2_ODDS = (243..250)
  EXACTA_3_HORSE_NUMBER_1 = (251..252)
  EXACTA_3_HORSE_NUMBER_2 = (253..254)
  EXACTA_3_ODDS = (255..262)
  EXACTA_4_HORSE_NUMBER_1 = (263..264)
  EXACTA_4_HORSE_NUMBER_2 = (265..266)
  EXACTA_4_ODDS = (267..274)
  EXACTA_5_HORSE_NUMBER_1 = (275..276)
  EXACTA_5_HORSE_NUMBER_2 = (277..278)
  EXACTA_5_ODDS = (279..286)
  EXACTA_6_HORSE_NUMBER_1 = (287..288)
  EXACTA_6_HORSE_NUMBER_2 = (289..290)
  EXACTA_6_ODDS = (291..298)
  #3連複
  TRIO_1_HORSE_NUMBER_1 = (299..300)
  TRIO_1_HORSE_NUMBER_2 = (301..302)
  TRIO_1_HORSE_NUMBER_3 = (303..304)
  TRIO_1_ODDS = (305..312)
  TRIO_2_HORSE_NUMBER_1 = (313..314)
  TRIO_2_HORSE_NUMBER_2 = (315..316)
  TRIO_2_HORSE_NUMBER_3 = (317..318)
  TRIO_2_ODDS = (319..326)
  TRIO_3_HORSE_NUMBER_1 = (327..328)
  TRIO_3_HORSE_NUMBER_2 = (329..330)
  TRIO_3_HORSE_NUMBER_3 = (331..332)
  TRIO_3_ODDS = (333..340)
  #3連単
  TRIFECTA_1_HORSE_NUMBER_1 = (341..342)
  TRIFECTA_1_HORSE_NUMBER_2 = (343..344)
  TRIFECTA_1_HORSE_NUMBER_3 = (345..346)
  TRIFECTA_1_ODDS = (347..355)
  TRIFECTA_2_HORSE_NUMBER_1 = (356..357)
  TRIFECTA_2_HORSE_NUMBER_2 = (358..359)
  TRIFECTA_2_HORSE_NUMBER_3 = (360..361)
  TRIFECTA_2_ODDS = (362..370)
  TRIFECTA_3_HORSE_NUMBER_1 = (371..372)
  TRIFECTA_3_HORSE_NUMBER_2 = (373..374)
  TRIFECTA_3_HORSE_NUMBER_3 = (375..376)
  TRIFECTA_3_ODDS = (377..385)
  TRIFECTA_4_HORSE_NUMBER_1 = (386..387)
  TRIFECTA_4_HORSE_NUMBER_2 = (388..389)
  TRIFECTA_4_HORSE_NUMBER_3 = (390..391)
  TRIFECTA_4_ODDS = (392..400)
  TRIFECTA_5_HORSE_NUMBER_1 = (401..402)
  TRIFECTA_5_HORSE_NUMBER_2 = (403..404)
  TRIFECTA_5_HORSE_NUMBER_3 = (405..406)
  TRIFECTA_5_ODDS = (407..415)
  TRIFECTA_6_HORSE_NUMBER_1 = (416..417)
  TRIFECTA_6_HORSE_NUMBER_2 = (418..419)
  TRIFECTA_6_HORSE_NUMBER_3 = (420..421)
  TRIFECTA_6_ODDS = (422..430)

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