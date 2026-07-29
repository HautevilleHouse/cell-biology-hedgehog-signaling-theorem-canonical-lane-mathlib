import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure LigandReceptorComplexPackage where
  ligand : Type u
  receptor : Type v
  complex : Type w
  bindingAffinity : Prop
  complexFormation : Prop
  signalingActive : Prop

structure LigandReceptorComplexEvidence (L : LigandReceptorComplexPackage) where
  bindingAffinityClosed : L.bindingAffinity
  complexFormationClosed : L.complexFormation
  signalingActiveClosed : L.signalingActive

def LigandReceptorComplexClosed (L : LigandReceptorComplexPackage) : Prop :=
  L.bindingAffinity ∧ L.complexFormation ∧ L.signalingActive

theorem ligand_receptor_complex_closed_from_evidence
    (L : LigandReceptorComplexPackage) (E : LigandReceptorComplexEvidence L) :
    LigandReceptorComplexClosed L := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.complexFormationClosed E.signalingActiveClosed)

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
