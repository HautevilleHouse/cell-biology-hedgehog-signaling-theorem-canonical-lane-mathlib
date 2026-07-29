import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.HedgehogSignalingAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

def gateClosed (A : HedgehogAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : HedgehogAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse