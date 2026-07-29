import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure HedgehogSignalingEvidenceTerms {P : HedgehogSignalingPathwayPackage}
    (C : HedgehogSignalingPathwayEvidence P) where
  pathwayActivationEvidence : C.pathwayActivationClosed
  pathwayRepressionEvidence : C.pathwayRepressionClosed

def HedgehogSignalingEvidenceTerms.evidenceTerms {P : HedgehogSignalingPathwayPackage}
    (C : HedgehogSignalingPathwayEvidence P) : HedgehogSignalingEvidenceTerms C :=
  {
    pathwayActivationEvidence := C.pathwayActivationClosed
    pathwayRepressionEvidence := C.pathwayRepressionClosed
  }

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
