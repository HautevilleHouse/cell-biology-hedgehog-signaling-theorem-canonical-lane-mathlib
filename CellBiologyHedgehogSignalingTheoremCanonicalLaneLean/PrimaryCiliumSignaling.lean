import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure PrimaryCiliumSignalingPackage where
  ciliumMembrane : Type u
  smoothenedLocalization : Type v
  patchedLocalization : Type w
  intraflagellarTransport : Type x
  ciliumSignalingCompartment : Prop
  smoothenedEnrichedInCilium : Prop
  patchedAtCiliumBase : Prop
  transportRequiredForSignaling : Prop

structure PrimaryCiliumSignalingEvidence (C : PrimaryCiliumSignalingPackage) where
  ciliumSignalingCompartmentClosed : C.ciliumSignalingCompartment
  smoothenedEnrichedInCiliumClosed : C.smoothenedEnrichedInCilium
  patchedAtCiliumBaseClosed : C.patchedAtCiliumBase
  transportRequiredForSignalingClosed : C.transportRequiredForSignaling

def PrimaryCiliumSignalingClosed (C : PrimaryCiliumSignalingPackage) : Prop :=
  C.ciliumSignalingCompartment ∧ C.smoothenedEnrichedInCilium ∧
  C.patchedAtCiliumBase ∧ C.transportRequiredForSignaling

theorem primary_cilium_signaling_closed_from_evidence (C : PrimaryCiliumSignalingPackage)
    (E : PrimaryCiliumSignalingEvidence C) : PrimaryCiliumSignalingClosed C := by
  exact And.intro E.ciliumSignalingCompartmentClosed
    (And.intro E.smoothenedEnrichedInCiliumClosed
      (And.intro E.patchedAtCiliumBaseClosed E.transportRequiredForSignalingClosed))

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse