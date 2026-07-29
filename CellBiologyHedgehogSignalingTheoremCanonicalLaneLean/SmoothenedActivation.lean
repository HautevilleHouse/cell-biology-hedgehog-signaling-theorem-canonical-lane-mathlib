import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure SmoothenedActivationPackage where
  patchedRelease : Prop
  smoothenedConformationalChange : Prop
  smoothenedTranslocationToCilium : Prop
  downstreamSignaling : Prop

structure SmoothenedActivationEvidence (S : SmoothenedActivationPackage) where
  patchedReleaseClosed : S.patchedRelease
  smoothenedConformationalChangeClosed : S.smoothenedConformationalChange
  smoothenedTranslocationToCiliumClosed : S.smoothenedTranslocationToCilium
  downstreamSignalingClosed : S.downstreamSignaling

def SmoothenedActivationClosed (S : SmoothenedActivationPackage) : Prop :=
  S.patchedRelease ∧ S.smoothenedConformationalChange ∧
  S.smoothenedTranslocationToCilium ∧ S.downstreamSignaling

theorem smoothened_activation_closed_from_evidence (S : SmoothenedActivationPackage) (E : SmoothenedActivationEvidence S) :
    SmoothenedActivationClosed S := by
  exact And.intro E.patchedReleaseClosed
    (And.intro E.smoothenedConformationalChangeClosed
      (And.intro E.smoothenedTranslocationToCiliumClosed E.downstreamSignalingClosed))

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse