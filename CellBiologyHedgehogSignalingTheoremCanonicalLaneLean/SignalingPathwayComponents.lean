import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure HedgehogLigand where
  ligandType : Type
  processedForm : Prop
  lipidModification : Prop
  processedFormTerm : processedForm
  lipidModificationTerm : lipidModification

structure PatchedReceptor where
  receptorType : Type
  bindsHedgehog : Prop
  inhibitsSmoothened : Prop
  bindsHedgehogTerm : bindsHedgehog
  inhibitsSmoothenedTerm : inhibitsSmoothened

structure SmoothenedProtein where
  proteinType : Type
  activatedUponReleaseFromPatched : Prop
  signalTransductionDownstream : Prop
  activatedTerm : activatedUponReleaseFromPatched
  signalTransductionTerm : signalTransductionDownstream

structure SignalingPathwayComponents where
  hedgehog : HedgehogLigand
  patched : PatchedReceptor
  smoothened : SmoothenedProtein
  componentsFunctional : Prop
  componentsFunctionalTerm : componentsFunctional

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse