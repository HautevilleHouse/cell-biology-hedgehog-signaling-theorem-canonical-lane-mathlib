import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.HedgehogSignalingPathway
import HautevilleHouse.CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.GliTranscriptionalRegulation
import HautevilleHouse.CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.PrimaryCiliumSignaling
import HautevilleHouse.CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.HedgehogSpatialGradient

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure HedgehogAdmittedObject where
  pathway : HedgehogSignalingPathwayPackage
  gliRegulation : GliTranscriptionalRegulationPackage
  cilium : PrimaryCiliumSignalingPackage
  gradient : HedgehogSpatialGradientPackage
  pathwayEvidence : HedgehogSignalingPathwayEvidence pathway
  gliRegulationEvidence : GliTranscriptionalRegulationEvidence gliRegulation
  ciliumEvidence : PrimaryCiliumSignalingEvidence cilium
  gradientEvidence : HedgehogSpatialGradientEvidence gradient
  conclusion : HedgehogSignalingPathwayClosed pathway ∧ GliTranscriptionalRegulationClosed gliRegulation ∧
              PrimaryCiliumSignalingClosed cilium ∧ HedgehogSpatialGradientClosed gradient

def HedgehogWitnessClosed (O : HedgehogAdmittedObject) : Prop :=
  O.conclusion

structure HedgehogAdmissibleClass where
  object : HedgehogAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def hedgehogAdmittedClosure (A : HedgehogAdmissibleClass) : Prop :=
  HedgehogWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse