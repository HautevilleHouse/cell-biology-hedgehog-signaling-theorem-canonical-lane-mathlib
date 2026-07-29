import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure PrimaryCilium where
  ciliaryMembrane : Type
  intraflagellarTransport : Prop
  signalTransductionCompartment : Prop
  intraflagellarTransportTerm : intraflagellarTransport
  signalTransductionCompartmentTerm : signalTransductionCompartment

structure TrafficControl where
  hedgehogLocalization : Prop
  smoothenedLocalization : Prop
  patchedLocalization : Prop
  hedgehogLocalizationTerm : hedgehogLocalization
  smoothenedLocalizationTerm : smoothenedLocalization
  patchedLocalizationTerm : patchedLocalization

structure CiliumTransportMechanism where
  cilium : PrimaryCilium
  traffic : TrafficControl
  transportFunctional : Prop
  transportFunctionalTerm : transportFunctional

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse