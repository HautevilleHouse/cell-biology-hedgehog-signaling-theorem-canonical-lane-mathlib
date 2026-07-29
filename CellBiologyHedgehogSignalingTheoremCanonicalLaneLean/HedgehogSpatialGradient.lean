import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingTheoremCanonicalLaneLean

structure HedgehogSpatialGradientPackage where
  morphogenSource : Type u
  extracellularMatrix : Type v
  diffusionCoefficient : Prop
  degradationRate : Prop
  concentrationGradient : Prop
  gradientFormation : Prop
  gradientStability : Prop

structure HedgehogSpatialGradientEvidence (G : HedgehogSpatialGradientPackage) where
  diffusionCoefficientClosed : G.diffusionCoefficient
  degradationRateClosed : G.degradationRate
  concentrationGradientClosed : G.concentrationGradient
  gradientFormationClosed : G.gradientFormation
  gradientStabilityClosed : G.gradientStability

def HedgehogSpatialGradientClosed (G : HedgehogSpatialGradientPackage) : Prop :=
  G.diffusionCoefficient ∧ G.degradationRate ∧ G.concentrationGradient ∧
  G.gradientFormation ∧ G.gradientStability

theorem hedgehog_spatial_gradient_closed_from_evidence (G : HedgehogSpatialGradientPackage)
    (E : HedgehogSpatialGradientEvidence G) : HedgehogSpatialGradientClosed G := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.degradationRateClosed
      (And.intro E.concentrationGradientClosed
        (And.intro E.gradientFormationClosed E.gradientStabilityClosed)))

end CellBiologyHedgehogSignalingTheoremCanonicalLaneLean
end HautevilleHouse