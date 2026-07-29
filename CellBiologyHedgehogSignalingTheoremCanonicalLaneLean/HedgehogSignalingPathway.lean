import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure HedgehogSignalingPathwayPackage where
  ligand : Type u
  receptor : Type v
  patched : Type w
  smoothened : Type x
  gliTranscriptionFactor : Type y
  pathwayActivated : Prop
  ligandBound : Prop
  patchedInhibitsSmoothened : Prop
  smoothenedActivatesGli : Prop
  gliRegulatesTargetGenes : Prop

structure HedgehogSignalingPathwayEvidence (P : HedgehogSignalingPathwayPackage) where
  ligandBoundClosed : P.ligandBound
  patchedInhibitsSmoothenedClosed : P.patchedInhibitsSmoothened
  smoothenedActivatesGliClosed : P.smoothenedActivatesGli
  gliRegulatesTargetGenesClosed : P.gliRegulatesTargetGenes

def HedgehogSignalingPathwayClosed (P : HedgehogSignalingPathwayPackage) : Prop :=
  P.ligandBound ∧ P.patchedInhibitsSmoothened ∧ P.smoothenedActivatesGli ∧ P.gliRegulatesTargetGenes

theorem hedgehog_signaling_pathway_closed_from_evidence (P : HedgehogSignalingPathwayPackage)
    (E : HedgehogSignalingPathwayEvidence P) : HedgehogSignalingPathwayClosed P := by
  exact And.intro E.ligandBoundClosed
    (And.intro E.patchedInhibitsSmoothenedClosed
      (And.intro E.smoothenedActivatesGliClosed E.gliRegulatesTargetGenesClosed))

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse