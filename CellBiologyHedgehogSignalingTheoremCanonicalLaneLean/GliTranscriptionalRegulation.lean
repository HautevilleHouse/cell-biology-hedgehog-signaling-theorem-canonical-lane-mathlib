import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure GliTranscriptionalRegulationPackage where
  gliActivatorForm : Type u
  gliRepressorForm : Type v
  targetGenePromoter : Type w
  transcriptionalActivation : Prop
  transcriptionalRepression : Prop
  activationRepressionBalance : Prop

structure GliTranscriptionalRegulationEvidence (G : GliTranscriptionalRegulationPackage) where
  transcriptionalActivationClosed : G.transcriptionalActivation
  transcriptionalRepressionClosed : G.transcriptionalRepression
  activationRepressionBalanceClosed : G.activationRepressionBalance

def GliTranscriptionalRegulationClosed (G : GliTranscriptionalRegulationPackage) : Prop :=
  G.transcriptionalActivation ∧ G.transcriptionalRepression ∧ G.activationRepressionBalance

theorem gli_transcriptional_regulation_closed_from_evidence
    (G : GliTranscriptionalRegulationPackage) (E : GliTranscriptionalRegulationEvidence G) :
    GliTranscriptionalRegulationClosed G := by
  exact And.intro E.transcriptionalActivationClosed
    (And.intro E.transcriptionalRepressionClosed E.activationRepressionBalanceClosed)

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse