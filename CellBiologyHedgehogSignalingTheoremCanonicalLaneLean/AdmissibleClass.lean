import CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : HedgehogAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HedgehogWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
