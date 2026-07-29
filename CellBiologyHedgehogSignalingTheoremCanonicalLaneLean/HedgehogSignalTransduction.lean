import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure SignalTransductionPackage where
  ligandBinding : Prop
  receptorActivation : Prop
  cytoplasmicSignalRelay : Prop
  nuclearResponse : Prop

structure SignalTransductionEvidence (S : SignalTransductionPackage) where
  ligandBindingClosed : S.ligandBinding
  receptorActivationClosed : S.receptorActivation
  cytoplasmicSignalRelayClosed : S.cytoplasmicSignalRelay
  nuclearResponseClosed : S.nuclearResponse

def SignalTransductionClosed (S : SignalTransductionPackage) : Prop :=
  S.ligandBinding ∧ S.receptorActivation ∧ S.cytoplasmicSignalRelay ∧ S.nuclearResponse

theorem signal_transduction_closed_from_evidence (S : SignalTransductionPackage) (E : SignalTransductionEvidence S) : SignalTransductionClosed S := by
  exact And.intro E.ligandBindingClosed (And.intro E.receptorActivationClosed (And.intro E.cytoplasmicSignalRelayClosed E.nuclearResponseClosed))

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
