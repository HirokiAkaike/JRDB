class DisassembleRefundInformationData
  Race_Key_Course_Code = (0..1)
  Race_Key_Year = (2..3)
  Race_Key_Times = 4
  Race_Key_Day = 5
  Race_Key_Number_Of_Race = (6..7)
  Win_Horse_Number_1 = (8..9)
  Win_Refund_1 = (10..16)
  Win_Horse_Number_2 = (17..18)
  Win_Refund_2 = (19..25)
  Win_Horse_Number_3 = (26..27)
  Win_Refund_3 = (28..34)
  Multiple_Wins_Refund_Horse_Number_1 = (35..36)
  Multiple_Wins_Refund_1 = (37..43)
  Multiple_Wins_Reimbursement_Horse_Number_2 = (44..45)
  Multiple_Wins_Refund_2 = (46..52)
  Multiple_Wins_Reimbursement_Horse_Number_3 = (53..54)
  Multiple_Wins_Refund_3 = (55..61)
  Multiple_Wins_Reimbursement_Horse_Number_4 = (62..63)
  Double_Wins_Refund_4 = (64..70)
  Multiple_Wins_Reimbursement_Horse_Number_5 = (71..72)
  Multiple_Wins_Refund_5 = (73..79)
  Wakuren_Frame_Program_Combined_1 = (80..81)
  Wakuren_Refund_Refund_1 = (82..88)
  Wakuren_Frame_Program_Together_2 = (89..90)
  Wakuren_Reimbursement_Refund_2 = (91..97)
  Wakuren_Frame_Program_Combined_3 = (98..99)
  Wakuren_Reimbursement_Refund_3 = (100..106)
  Valentin_Horse_Number_Combination_1 = (107..108)
  Valentin_Refund_1 = (111..117)
  Valentin_Horse_Number_Combination_2 = (119..120)
  Valentin_Refund_2 = (123..129)
  Valentin_Horse_Number_Combination_3 = (131..132)
  Valentin_Refund_3 = (135..141)
  Wide_Horse_Number_Combination_1 = (143..144)
  Wide_Withdrawal_1 = (147..153)
  Wide_Horse_Number_Combination_2 = (155..156)
  Wide_Reimbursement_2 = (159..165)
  Wide_Horse_Number_Combination_3 = (167..168)
  Wide_Reimbursement_3 = (171..177)
  Wide_Horse_Number_Combination_4 = (179..180)
  Wide_Refund_4 = (183..189)
  Wide_Horse_Number_Combination_5 = (191..192)
  Wide_Refund_5 = (195..201)
  Wide_Horse_Number_Combination_6 = (203..204)
  Wide_Reimbursement_6 = (207..213)
  Wide_Horse_Number_Combination_7 = (215..216)
  Wide_Reimbursement_7 = (219..225)
  Horse_Single_Horse_Number_Combination_1 = (227..228)
  Horse_Single_Reimbursement_1 = (231..237)
  Horse_Single_Horse_Number_Combination_2 = (239..240)
  Horse_Single_Reimbursement_2 = (243..249)
  Horse_Single_Horse_Number_Combination_3 = (251..252)
  Horse_Single_Reimbursement_3 = (255..261)
  Horse_Single_Horse_Number_Combination_4 = (263..264)
  Horse_Single_Reimbursement_4 = (267..273)
  Horse_Single_Horse_Number_Combination_5 = (275..276)
  Horse_Single_Reimbursement_5 = (279..285)
  Horse_Single_Horse_Number_Combination_6 = (287..288)
  Horse_Single_Reimbursement_6 = (291..297)
  Triple_Double_Horse_Number_Combination_1 = (299..300)
  Triple_Double_Withdrawal_1 = (305..311)
  Triple_Double_Horse_Number_Combination_2 = (313..314)
  Triple_Double_Reimbursement_2 = (319..325)
  Triple_Double_Horse_Number_Combination_3 = (327..328)
  Triple_Double_Reimbursement_3 = (333..339)
  Trifecta_Horse_Number_Combination_1 = (341..342)
  Trifecta_Withdrawal_1 = (347..353)
  Trifecta_Horse_Number_Combination_2 = (356..357)
  Trifecta_Reimbursement_2 = (362..368)
  Trifecta_Horse_Number_Combination_3 = (371..372)
  Trifecta_Reimbursement_3 = (377..383)
  Trifecta_Horse_Number_Combination_4 = (386..387)
  Trifecta_Refund_4 = (392..398)
  Trifecta_Horse_Number_Combination_5 = (401..402)
  Trifecta_Refund_5 = (407..413)
  Trifecta_Horse_Number_Combination_6 = (416..417)
  Trifecta_Reimbursement_6 = (422..428)
  Preliminary_1 = (431..440)
  And_2 = 441

  def initialize(refundInformationData)
    @refundInformationData = refundInformationData
  end

  def getRaceKeyCourseCode() @refund_information_data.b.slice(Race_Key_Course_Code).force_encoding("utf-8") end
  def getRaceKeyYear() @refund_information_data.b.slice(Race_Key_Year).force_encoding("utf-8") end
  def getRaceKeyTimes() @refund_information_data.b.slice(Race_Key_Times).force_encoding("utf-8") end
  def getRaceKeyDay() @refund_information_data.b.slice(Race_Key_Day).force_encoding("utf-8") end
  def getRaceKeyNumberOfRace() @refund_information_data.b.slice(Race_Key_Number_Of_Race).force_encoding("utf-8") end
  def getWinHorseNumber1() @refund_information_data.b.slice(Win_Horse_Number_1).force_encoding("utf-8") end
  def getWinRefund1() @refund_information_data.b.slice(Win_Refund_1).force_encoding("utf-8") end
  def getWinHorseNumber2() @refund_information_data.b.slice(Win_Horse_Number_2).force_encoding("utf-8") end
  def getWinRefund2() @refund_information_data.b.slice(Win_Refund_2).force_encoding("utf-8") end
  def getWinHorseNumber3() @refund_information_data.b.slice(Win_Horse_Number_3).force_encoding("utf-8") end
  def getWinRefund3() @refund_information_data.b.slice(Win_Refund_3).force_encoding("utf-8") end
  def getMultipleWinsRefundHorseNumber1() @refund_information_data.b.slice(Multiple_Wins_Refund_Horse_Number_1).force_encoding("utf-8") end
  def getMultipleWinsRefund1() @refund_information_data.b.slice(Multiple_Wins_Refund_1).force_encoding("utf-8") end
  def getMultipleWinsReimbursementHorseNumber2() @refund_information_data.b.slice(Multiple_Wins_Reimbursement_Horse_Number_2).force_encoding("utf-8") end
  def getMultipleWinsRefund2() @refund_information_data.b.slice(Multiple_Wins_Refund_2).force_encoding("utf-8") end
  def getMultipleWinsReimbursementHorseNumber3() @refund_information_data.b.slice(Multiple_Wins_Reimbursement_Horse_Number_3).force_encoding("utf-8") end
  def getMultipleWinsRefund3() @refund_information_data.b.slice(Multiple_Wins_Refund_3).force_encoding("utf-8") end
  def getMultipleWinsReimbursementHorseNumber4() @refund_information_data.b.slice(Multiple_Wins_Reimbursement_Horse_Number_4).force_encoding("utf-8") end
  def getDoubleWinsRefund4() @refund_information_data.b.slice(Double_Wins_Refund_4).force_encoding("utf-8") end
  def getMultipleWinsReimbursementHorseNumber5() @refund_information_data.b.slice(Multiple_Wins_Reimbursement_Horse_Number_5).force_encoding("utf-8") end
  def getMultipleWinsRefund5() @refund_information_data.b.slice(Multiple_Wins_Refund_5).force_encoding("utf-8") end
  def getWakurenFrameProgramCombined1() @refund_information_data.b.slice(Wakuren_Frame_Program_Combined_1).force_encoding("utf-8") end
  def getWakurenRefundRefund1() @refund_information_data.b.slice(Wakuren_Refund_Refund_1).force_encoding("utf-8") end
  def getWakurenFrameProgramTogether2() @refund_information_data.b.slice(Wakuren_Frame_Program_Together_2).force_encoding("utf-8") end
  def getWakurenReimbursementRefund2() @refund_information_data.b.slice(Wakuren_Reimbursement_Refund_2).force_encoding("utf-8") end
  def getWakurenFrameProgramCombined3() @refund_information_data.b.slice(Wakuren_Frame_Program_Combined_3).force_encoding("utf-8") end
  def getWakurenReimbursementRefund3() @refund_information_data.b.slice(Wakuren_Reimbursement_Refund_3).force_encoding("utf-8") end
  def getValentinHorseNumberCombination1() @refund_information_data.b.slice(Valentin_Horse_Number_Combination_1).force_encoding("utf-8") end
  def getValentinRefund1() @refund_information_data.b.slice(Valentin_Refund_1).force_encoding("utf-8") end
  def getValentinHorseNumberCombination2() @refund_information_data.b.slice(Valentin_Horse_Number_Combination_2).force_encoding("utf-8") end
  def getValentinRefund2() @refund_information_data.b.slice(Valentin_Refund_2).force_encoding("utf-8") end
  def getValentinHorseNumberCombination3() @refund_information_data.b.slice(Valentin_Horse_Number_Combination_3).force_encoding("utf-8") end
  def getValentinRefund3() @refund_information_data.b.slice(Valentin_Refund_3).force_encoding("utf-8") end
  def getWideHorseNumberCombination1() @refund_information_data.b.slice(Wide_Horse_Number_Combination_1).force_encoding("utf-8") end
  def getWideWithdrawal1() @refund_information_data.b.slice(Wide_Withdrawal_1).force_encoding("utf-8") end
  def getWideHorseNumberCombination2() @refund_information_data.b.slice(Wide_Horse_Number_Combination_2).force_encoding("utf-8") end
  def getWideReimbursement2() @refund_information_data.b.slice(Wide_Reimbursement_2).force_encoding("utf-8") end
  def getWideHorseNumberCombination3() @refund_information_data.b.slice(Wide_Horse_Number_Combination_3).force_encoding("utf-8") end
  def getWideReimbursement3() @refund_information_data.b.slice(Wide_Reimbursement_3).force_encoding("utf-8") end
  def getWideHorseNumberCombination4() @refund_information_data.b.slice(Wide_Horse_Number_Combination_4).force_encoding("utf-8") end
  def getWideRefund4() @refund_information_data.b.slice(Wide_Refund_4).force_encoding("utf-8") end
  def getWideHorseNumberCombination5() @refund_information_data.b.slice(Wide_Horse_Number_Combination_5).force_encoding("utf-8") end
  def getWideRefund5() @refund_information_data.b.slice(Wide_Refund_5).force_encoding("utf-8") end
  def getWideHorseNumberCombination6() @refund_information_data.b.slice(Wide_Horse_Number_Combination_6).force_encoding("utf-8") end
  def getWideReimbursement6() @refund_information_data.b.slice(Wide_Reimbursement_6).force_encoding("utf-8") end
  def getWideHorseNumberCombination7() @refund_information_data.b.slice(Wide_Horse_Number_Combination_7).force_encoding("utf-8") end
  def getWideReimbursement7() @refund_information_data.b.slice(Wide_Reimbursement_7).force_encoding("utf-8") end
  def getHorseSingleHorseNumberCombination1() @refund_information_data.b.slice(Horse_Single_Horse_Number_Combination_1).force_encoding("utf-8") end
  def getHorseSingleReimbursement1() @refund_information_data.b.slice(Horse_Single_Reimbursement_1).force_encoding("utf-8") end
  def getHorseSingleHorseNumberCombination2() @refund_information_data.b.slice(Horse_Single_Horse_Number_Combination_2).force_encoding("utf-8") end
  def getHorseSingleReimbursement2() @refund_information_data.b.slice(Horse_Single_Reimbursement_2).force_encoding("utf-8") end
  def getHorseSingleHorseNumberCombination3() @refund_information_data.b.slice(Horse_Single_Horse_Number_Combination_3).force_encoding("utf-8") end
  def getHorseSingleReimbursement3() @refund_information_data.b.slice(Horse_Single_Reimbursement_3).force_encoding("utf-8") end
  def getHorseSingleHorseNumberCombination4() @refund_information_data.b.slice(Horse_Single_Horse_Number_Combination_4).force_encoding("utf-8") end
  def getHorseSingleReimbursement4() @refund_information_data.b.slice(Horse_Single_Reimbursement_4).force_encoding("utf-8") end
  def getHorseSingleHorseNumberCombination5() @refund_information_data.b.slice(Horse_Single_Horse_Number_Combination_5).force_encoding("utf-8") end
  def getHorseSingleReimbursement5() @refund_information_data.b.slice(Horse_Single_Reimbursement_5).force_encoding("utf-8") end
  def getHorseSingleHorseNumberCombination6() @refund_information_data.b.slice(Horse_Single_Horse_Number_Combination_6).force_encoding("utf-8") end
  def getHorseSingleReimbursement6() @refund_information_data.b.slice(Horse_Single_Reimbursement_6).force_encoding("utf-8") end
  def getTripleDoubleHorseNumberCombination1() @refund_information_data.b.slice(Triple_Double_Horse_Number_Combination_1).force_encoding("utf-8") end
  def getTripleDoubleWithdrawal1() @refund_information_data.b.slice(Triple_Double_Withdrawal_1).force_encoding("utf-8") end
  def getTripleDoubleHorseNumberCombination2() @refund_information_data.b.slice(Triple_Double_Horse_Number_Combination_2).force_encoding("utf-8") end
  def getTripleDoubleReimbursement2() @refund_information_data.b.slice(Triple_Double_Reimbursement_2).force_encoding("utf-8") end
  def getTripleDoubleHorseNumberCombination3() @refund_information_data.b.slice(Triple_Double_Horse_Number_Combination_3).force_encoding("utf-8") end
  def getTripleDoubleReimbursement3() @refund_information_data.b.slice(Triple_Double_Reimbursement_3).force_encoding("utf-8") end
  def getTrifectaHorseNumberCombination1() @refund_information_data.b.slice(Trifecta_Horse_Number_Combination_1).force_encoding("utf-8") end
  def getTrifectaWithdrawal1() @refund_information_data.b.slice(Trifecta_Withdrawal_1).force_encoding("utf-8") end
  def getTrifectaHorseNumberCombination2() @refund_information_data.b.slice(Trifecta_Horse_Number_Combination_2).force_encoding("utf-8") end
  def getTrifectaReimbursement2() @refund_information_data.b.slice(Trifecta_Reimbursement_2).force_encoding("utf-8") end
  def getTrifectaHorseNumberCombination3() @refund_information_data.b.slice(Trifecta_Horse_Number_Combination_3).force_encoding("utf-8") end
  def getTrifectaReimbursement3() @refund_information_data.b.slice(Trifecta_Reimbursement_3).force_encoding("utf-8") end
  def getTrifectaHorseNumberCombination4() @refund_information_data.b.slice(Trifecta_Horse_Number_Combination_4).force_encoding("utf-8") end
  def getTrifectaRefund4() @refund_information_data.b.slice(Trifecta_Refund_4).force_encoding("utf-8") end
  def getTrifectaHorseNumberCombination5() @refund_information_data.b.slice(Trifecta_Horse_Number_Combination_5).force_encoding("utf-8") end
  def getTrifectaRefund5() @refund_information_data.b.slice(Trifecta_Refund_5).force_encoding("utf-8") end
  def getTrifectaHorseNumberCombination6() @refund_information_data.b.slice(Trifecta_Horse_Number_Combination_6).force_encoding("utf-8") end
  def getTrifectaReimbursement6() @refund_information_data.b.slice(Trifecta_Reimbursement_6).force_encoding("utf-8") end
  def getPreliminary1() @refund_information_data.b.slice(Preliminary_1).force_encoding("utf-8") end
  def getAnd2() @refund_information_data.b.slice(And_2).force_encoding("utf-8") end

end


