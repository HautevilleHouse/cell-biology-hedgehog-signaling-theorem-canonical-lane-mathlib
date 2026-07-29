import canonicalLaneMathlib.AdmissibleClass
import CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.LigandReceptorComplex
import CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.PatchedSmoothenedActivation
import CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.GliTranscriptionFactor

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

def ConstrainedHedgehogClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hedgehog_endgame (A : AdmissibleClass) :
    ConstrainedHedgehogClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse
