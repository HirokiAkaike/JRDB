class DisassembleBasicHorse
  PEDIGREE_REGISTER_CODE = (0..7)
  HORSE_NAME = (8..43)
  GENDER_CODE = 44
  COAT_COLOR_CODE = (45..46)
  HORSE_SYMBOL_CODE = (47..48)
  PEDIGREE_INFO_FATHER_NAME = (49..84)
  PEDIGREE_INFO_MOTHER_NAME = (85..120)
  PEDIGREE_INFO_MATERNAL_FATHER_NAME = (121..156)
  PEDIGREE_INFO_BARTH_ON = (157..164)
  PEDIGREE_INFO_FATHER_BARTH_ON = (165..168)
  PEDIGREE_INFO_MOTHER_BARTH_ON = (169..172)
  PEDIGREE_INFO_MATERNAL_FATHER_BARTH_ON = (173..176)
  PEDIGREE_INFO_OWNER_NAME = (177..216)
  PEDIGREE_INFO_OWNER_BELONG_CODE = (217..218)
  PEDIGREE_INFO_PRODUCER_NAME = (219..258)
  PEDIGREE_INFO_PRODUCTION_PLACE_NAME = (259..266)
  PEDIGREE_INFO_REGISTER_DEL_FLG = 267
  PEDIGREE_INFO_DATA_YMD = (268..275)
  PEDIGREE_INFO_FATHER_LINEAGE_CODE = (276..279)
  PEDIGREE_INFO_MATERNAL_FATHER_LINEAGE_CODE = (280..283)

  def initialize(basicHorse)
    @basicHorse = basicHorse
  end

  def getPedigreeRegisterCode
    @basicHorse.b.slice(PEDIGREE_REGISTER_CODE).force_encoding("utf-8")
  end

  def getHorseName
    @basicHorse.b.slice(HORSE_NAME).encode("UTF-8", "Shift_JIS")
  end

  def getGenderCode
    @basicHorse.b.slice(GENDER_CODE).force_encoding("utf-8")
  end

  def getCoatColorCode
    @basicHorse.b.slice(COAT_COLOR_CODE).force_encoding("utf-8")
  end

  def getHorseSymbolCode
    @basicHorse.b.slice(HORSE_SYMBOL_CODE).force_encoding("utf-8")
  end

  def getPedigreeInfoFatherName
    @basicHorse.b.slice(PEDIGREE_INFO_FATHER_NAME).encode("UTF-8", "Shift_JIS")
  end

  def getPedigreeInfoMotherName
    begin
      @basicHorse.b.slice(PEDIGREE_INFO_MOTHER_NAME).encode("UTF-8", "Shift_JIS")
    rescue => e
      p e
    end
  end

  def getPedigreeInfoMaternalFatherName
    begin
      @basicHorse.b.slice(PEDIGREE_INFO_MATERNAL_FATHER_NAME).encode("UTF-8", "Shift_JIS")
    rescue => e
      p e
    end
  end

  def getPedigreeInfoBarthOn
    @basicHorse.b.slice(PEDIGREE_INFO_BARTH_ON).force_encoding("utf-8")
  end

  def getPedigreeInfoFatherBarthOn
    @basicHorse.b.slice(PEDIGREE_INFO_FATHER_BARTH_ON).force_encoding("utf-8")
  end

  def getPedigreeInfoMotherBarthOn
    @basicHorse.b.slice(PEDIGREE_INFO_MOTHER_BARTH_ON).force_encoding("utf-8")
  end

  def getPedigreeInfoMaternalFatherBarthOn
    @basicHorse.b.slice(PEDIGREE_INFO_MATERNAL_FATHER_BARTH_ON).force_encoding("utf-8")
  end

  def getPedigreeInfoOwnerName
    begin
      @basicHorse.b.slice(PEDIGREE_INFO_OWNER_NAME).encode("UTF-8", "Shift_JIS")
    rescue => e
      p e
      return nil
    end
  end

  def getPedigreeInfoOwnerBelongCode
    @basicHorse.b.slice(PEDIGREE_INFO_OWNER_BELONG_CODE).force_encoding("utf-8")
  end

  def getPedigreeInfoProducerName
    begin
      @basicHorse.b.slice(PEDIGREE_INFO_PRODUCER_NAME).encode("UTF-8", "Shift_JIS")
    rescue => e
      p e
      return nil
    end
  end

  def getPedigreeInfoProductionPlaceName
    @basicHorse.b.slice(PEDIGREE_INFO_PRODUCTION_PLACE_NAME).encode("UTF-8", "Shift_JIS")
  end

  def getPedigreeInfoRegisterDelFlg
    @basicHorse.b.slice(PEDIGREE_INFO_REGISTER_DEL_FLG).force_encoding("utf-8")
  end

  def getPedigreeInfoDataYmd
    @basicHorse.b.slice(PEDIGREE_INFO_DATA_YMD).force_encoding("utf-8")
  end

  def getPedigreeInfoFatherLineageCode
    @basicHorse.b.slice(PEDIGREE_INFO_FATHER_LINEAGE_CODE).force_encoding("utf-8")
  end

  def getPedigreeInfoMaternalFatherLineageCode
    @basicHorse.b.slice(PEDIGREE_INFO_MATERNAL_FATHER_LINEAGE_CODE).force_encoding("utf-8")
  end

end
