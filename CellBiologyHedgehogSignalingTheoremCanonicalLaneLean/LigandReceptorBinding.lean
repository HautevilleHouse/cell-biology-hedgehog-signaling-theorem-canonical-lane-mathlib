import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure LigandReceptorBindingPackage where
  ligandPresent : Prop
  patchedBound : Prop
  dissociationConstant : ℝ
  bindingAffinity : Prop

structure LigandReceptorBindingEvidence (P : LigandReceptorBindingPackage) where
  ligandPresentClosed : P.ligandPresent
  patchedBoundClosed : P.patchedBound
  bindingAffinityClosed : P.bindingAffinity

def LigandReceptorBindingClosed (P : LigandReceptorBindingPackage) : Prop :=
  P.ligandPresent ∧ P.patchedBound ∧ P.bindingAffinity

theorem ligand_receptor_binding_closed_from_evidence
    (P : LigandReceptorBindingPackage)
    (E : LigandReceptorBindingEvidence P) :
    LigandReceptorBindingClosed P := by
  exact And.intro E.ligandPresentClosed
    (And.intro E.patchedBoundClosed E.bindingAffinityClosed)

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse