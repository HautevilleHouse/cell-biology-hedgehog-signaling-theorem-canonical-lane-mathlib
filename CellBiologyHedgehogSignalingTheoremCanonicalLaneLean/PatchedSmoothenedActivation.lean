import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure PatchedSmoothenedActivationPackage where
  patched : Type u
  smoothened : Type v
  hhLigand : Type w
  inhibitionRelief : Prop
  smoothenedActivation : Prop
  pathwayOn : Prop

structure PatchedSmoothenedActivationEvidence
    (P : PatchedSmoothenedActivationPackage) where
  inhibitionReliefClosed : P.inhibitionRelief
  smoothenedActivationClosed : P.smoothenedActivation
  pathwayOnClosed : P.pathwayOn

def PatchedSmoothenedActivationClosed (P : PatchedSmoothenedActivationPackage) : Prop :=
  P.inhibitionRelief ∧ P.smoothenedActivation ∧ P.pathwayOn

theorem patched_smoothened_activation_closed_from_evidence
    (P : PatchedSmoothenedActivationPackage)
    (E : PatchedSmoothenedActivationEvidence P) :
    PatchedSmoothenedActivationClosed P := by
  exact And.intro E.inhibitionReliefClosed
    (And.intro E.smoothenedActivationClosed E.pathwayOnClosed)

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
