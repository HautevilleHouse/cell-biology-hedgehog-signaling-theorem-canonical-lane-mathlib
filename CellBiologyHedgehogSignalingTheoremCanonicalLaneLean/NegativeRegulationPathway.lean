import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure SuppressorOfFused where
  proteinType : Type
  bindsGli : Prop
  promotesGliRepressorFormation : Prop
  bindsGliTerm : bindsGli
  promotesGliRepressorFormationTerm : promotesGliRepressorFormation

structure Costal2Protein where
  proteinType : Type
  scaffoldsKinesin : Prop
  tethersGli : Prop
  scaffoldsKinesinTerm : scaffoldsKinesin
  tethersGliTerm : tethersGli

structure NegativeRegulationPathway where
  suppressorOfFused : SuppressorOfFused
  costal2 : Costal2Protein
  inhibitionFunctional : Prop
  inhibitionFunctionalTerm : inhibitionFunctional

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse