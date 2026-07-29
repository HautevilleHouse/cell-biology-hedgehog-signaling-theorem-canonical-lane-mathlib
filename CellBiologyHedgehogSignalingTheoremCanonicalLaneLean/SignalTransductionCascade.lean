import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure SignalTransductionCascadePackage where
  smoothenedActive : Prop
  gliPhosphorylation : Prop
  nuclearTranslocation : Prop
  transcriptionalActivation : Prop

structure SignalTransductionCascadeEvidence (C : SignalTransductionCascadePackage) where
  smoothenedActiveClosed : C.smoothenedActive
  gliPhosphorylationClosed : C.gliPhosphorylation
  nuclearTranslocationClosed : C.nuclearTranslocation
  transcriptionalActivationClosed : C.transcriptionalActivation

def SignalTransductionCascadeClosed (C : SignalTransductionCascadePackage) : Prop :=
  C.smoothenedActive ∧ C.gliPhosphorylation ∧ C.nuclearTranslocation ∧ C.transcriptionalActivation

theorem signal_transduction_cascade_closed_from_evidence
    (C : SignalTransductionCascadePackage)
    (E : SignalTransductionCascadeEvidence C) :
    SignalTransductionCascadeClosed C := by
  exact And.intro E.smoothenedActiveClosed
    (And.intro E.gliPhosphorylationClosed
      (And.intro E.nuclearTranslocationClosed E.transcriptionalActivationClosed))

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse