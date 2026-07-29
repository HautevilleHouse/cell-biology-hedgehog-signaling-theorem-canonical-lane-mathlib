import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure HedgehogGradient where
  morphogenConcentration : Type
  spatialDistribution : Prop
  thresholdDependentResponse : Prop
  spatialDistributionTerm : spatialDistribution
  thresholdDependentResponseTerm : thresholdDependentResponse

structure TissuePatterning where
  cellFateSpecification : Prop
  cellProliferationControl : Prop
  tissueMorphogenesis : Prop
  cellFateSpecificationTerm : cellFateSpecification
  cellProliferationControlTerm : cellProliferationControl
  tissueMorphogenesisTerm : tissueMorphogenesis

structure SignalingGradientMorphogenesis where
  gradient : HedgehogGradient
  patterning : TissuePatterning
  morphogenesisFunctional : Prop
  morphogenesisFunctionalTerm : morphogenesisFunctional

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse