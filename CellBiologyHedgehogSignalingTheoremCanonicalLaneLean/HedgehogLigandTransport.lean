import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure HedgehogLigandTransportPackage where
  ligandSynthesis : Prop
  palmitoylationModification : Prop
  extracellularRelease : Prop
  gradientFormation : Prop

structure HedgehogLigandTransportEvidence (H : HedgehogLigandTransportPackage) where
  ligandSynthesisClosed : H.ligandSynthesis
  palmitoylationModificationClosed : H.palmitoylationModification
  extracellularReleaseClosed : H.extracellularRelease
  gradientFormationClosed : H.gradientFormation

def HedgehogLigandTransportClosed (H : HedgehogLigandTransportPackage) : Prop :=
  H.ligandSynthesis ∧ H.palmitoylationModification ∧ H.extracellularRelease ∧ H.gradientFormation

theorem hedgehog_ligand_transport_closed_from_evidence (H : HedgehogLigandTransportPackage) (E : HedgehogLigandTransportEvidence H) : HedgehogLigandTransportClosed H := by
  exact And.intro E.ligandSynthesisClosed (And.intro E.palmitoylationModificationClosed (And.intro E.extracellularReleaseClosed E.gradientFormationClosed))

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
