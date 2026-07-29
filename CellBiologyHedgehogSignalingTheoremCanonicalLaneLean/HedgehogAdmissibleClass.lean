import canonicalLaneMathlib.AdmissibleClass
import CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.HedgehogSignalingPathway

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure HedgehogAdmittedObject where
  pathway : HedgehogSignalingPathway
  pathwayClosed : HedgehogSignalingPathwayClosed pathway
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure HedgehogAdmissibleClass where
  object : HedgehogAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def hedgehogAdmittedClosure (A : HedgehogAdmissibleClass) : Prop :=
  HedgehogSignalingPathwayClosed A.object.pathway ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse