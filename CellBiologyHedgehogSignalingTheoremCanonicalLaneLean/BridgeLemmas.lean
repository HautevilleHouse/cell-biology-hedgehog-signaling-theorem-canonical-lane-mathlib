import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyHedgehogSignalingTheoremCanonicalLaneLean.HedgehogSignalingAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

def bridgeClosed (A : HedgehogAdmissibleClass) : Prop :=
  HedgehogWitnessClosed A.object

theorem bridge_from_admissible_class (A : HedgehogAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse