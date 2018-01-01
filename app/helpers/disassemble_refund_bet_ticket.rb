class DisassembleRefundBetTicket
  #レースキー
  RACE_KEY_COURSE_CODE = (0..1)
  RACE_KEY_YEAR = (2..3)
  RACE_KEY_TIMES = 4
  RACE_KEY_DAY = 5
  RACE_KEY_NUMBER_OF_RACE = (6..7)
  HORSE_NUMBER = (8..9)

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

end