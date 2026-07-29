import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure GliTranscriptionFactor where
  factorType : Type
  activatorForm : Prop
  repressorForm : Prop
  activatorFormTerm : activatorForm
  repressorFormTerm : repressorForm

structure TargetGeneActivation where
  geneSet : Type
  activatedByGliActivator : Prop
  repressedByGliRepressor : Prop
  activatedTerm : activatedByGliActivator
  repressedTerm : repressedByGliRepressor

structure TranscriptionFactorActivation where
  gli : GliTranscriptionFactor
  targetGenes : TargetGeneActivation
  regulationFunctional : Prop
  regulationFunctionalTerm : regulationFunctional

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse