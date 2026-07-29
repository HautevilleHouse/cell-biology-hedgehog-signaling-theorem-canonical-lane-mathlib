import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure HedgehogProofCertificate where
  hedgehogPathwayEvidence : HedgehogSignalingPathwayEvidence HedgehogSignalingPathwayPackage.mk
  smoothenedEvidence : SmoothenedActivationEvidence SmoothenedActivationPackage.mk
  gliComplexEvidence : GliTranscriptionalComplexEvidence GliTranscriptionalComplexPackage.mk

def HedgehogProofCertificateClosed (C : HedgehogProofCertificate) : Prop :=
  HedgehogSignalingPathwayClosed HedgehogSignalingPathwayPackage.mk ∧
  SmoothenedActivationClosed SmoothenedActivationPackage.mk ∧
  GliTranscriptionalComplexClosed GliTranscriptionalComplexPackage.mk

theorem hedgehog_proof_certificate_closed (C : HedgehogProofCertificate) :
    HedgehogProofCertificateClosed C := by
  exact And.intro
    (hedgehog_signaling_pathway_closed_from_evidence HedgehogSignalingPathwayPackage.mk
      C.hedgehogPathwayEvidence)
    (And.intro
      (smoothened_activation_closed_from_evidence SmoothenedActivationPackage.mk
        C.smoothenedEvidence)
      (gli_transcriptional_complex_closed_from_evidence GliTranscriptionalComplexPackage.mk
        C.gliComplexEvidence))

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
