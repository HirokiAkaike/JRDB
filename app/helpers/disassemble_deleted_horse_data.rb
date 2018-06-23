class DisassembleDeletedHorse
  Pedigree_Registration_Number = (0..7)

  def initialize(tvProgram)
    @tvProgram = tvProgram
  end

  def getPedigreeRegistrationNumber() @deleted_horse_data.b.slice(Pedigree_Registration_Number).force_encoding("utf-8") end

end


