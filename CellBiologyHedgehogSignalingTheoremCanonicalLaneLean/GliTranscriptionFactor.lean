import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure GliTranscriptionFactorPackage where
  gliProtein : Type u
  nuclearLocalization : Prop
  targetGeneActivation : Prop
  signalTransduced : Prop

structure GliTranscriptionFactorEvidence (G : GliTranscriptionFactorPackage) where
  nuclearLocalizationClosed : G.nuclearLocalization
  targetGeneActivationClosed : G.targetGeneActivation
  signalTransducedClosed : G.signalTransduced

def GliTranscriptionFactorClosed (G : GliTranscriptionFactorPackage) : Prop :=
  G.nuclearLocalization ∧ G.targetGeneActivation ∧ G.signalTransduced

theorem gli_transcription_factor_closed_from_evidence
    (G : GliTranscriptionFactorPackage) (E : GliTranscriptionFactorEvidence G) :
    GliTranscriptionFactorClosed G := by
  exact And.intro E.nuclearLocalizationClosed
    (And.intro E.targetGeneActivationClosed E.signalTransducedClosed)

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
