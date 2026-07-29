import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure GliTranscriptionalComplexPackage where
  gliNuclearLocalization : Prop
  gliDnaBinding : Prop
  coactivatorRecruitment : Prop
  corepressorDissociation : Prop
  targetGeneActivation : Prop
  targetGeneRepression : Prop

structure GliTranscriptionalComplexEvidence (G : GliTranscriptionalComplexPackage) where
  gliNuclearLocalizationClosed : G.gliNuclearLocalization
  gliDnaBindingClosed : G.gliDnaBinding
  coactivatorRecruitmentClosed : G.coactivatorRecruitment
  corepressorDissociationClosed : G.corepressorDissociation
  targetGeneActivationClosed : G.targetGeneActivation
  targetGeneRepressionClosed : G.targetGeneRepression

def GliTranscriptionalComplexClosed (G : GliTranscriptionalComplexPackage) : Prop :=
  G.gliNuclearLocalization ∧ G.gliDnaBinding ∧ G.coactivatorRecruitment ∧
  G.corepressorDissociation ∧ G.targetGeneActivation ∧ G.targetGeneRepression

theorem gli_transcriptional_complex_closed_from_evidence
    (G : GliTranscriptionalComplexPackage) (E : GliTranscriptionalComplexEvidence G) :
    GliTranscriptionalComplexClosed G := by
  exact And.intro E.gliNuclearLocalizationClosed
    (And.intro E.gliDnaBindingClosed
      (And.intro E.coactivatorRecruitmentClosed
        (And.intro E.corepressorDissociationClosed
          (And.intro E.targetGeneActivationClosed E.targetGeneRepressionClosed))))

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
