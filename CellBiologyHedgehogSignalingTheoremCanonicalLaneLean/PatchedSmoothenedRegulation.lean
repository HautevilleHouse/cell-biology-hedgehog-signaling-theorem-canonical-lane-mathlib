import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure PatchedSmoothenedPackage where
  patchedInhibition : Prop
  smoothenedActivation : Prop
  pathwayDerepression : Prop
  signalingThreshold : Prop

structure PatchedSmoothenedEvidence (P : PatchedSmoothenedPackage) where
  patchedInhibitionClosed : P.patchedInhibition
  smoothenedActivationClosed : P.smoothenedActivation
  pathwayDerepressionClosed : P.pathwayDerepression
  signalingThresholdClosed : P.signalingThreshold

def PatchedSmoothenedClosed (P : PatchedSmoothenedPackage) : Prop :=
  P.patchedInhibition ∧ P.smoothenedActivation ∧ P.pathwayDerepression ∧ P.signalingThreshold

theorem patched_smoothened_closed_from_evidence (P : PatchedSmoothenedPackage) (E : PatchedSmoothenedEvidence P) : PatchedSmoothenedClosed P := by
  exact And.intro E.patchedInhibitionClosed (And.intro E.smoothenedActivationClosed (And.intro E.pathwayDerepressionClosed E.signalingThresholdClosed))

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
