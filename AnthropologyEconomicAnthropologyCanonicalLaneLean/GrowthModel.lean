import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyEconomicAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure SolowGrowthModel (A : AdmissibleClass) where
  capitalStock : A.object.commoditySet → ℝ
  productionFunction : A.object.commoditySet → ℝ
  savingsRate : ℝ
  depreciationRate : ℝ
  dynamicEquation : capitalStock = (1 - depreciationRate) * capitalStock + savingsRate * productionFunction capitalStock
  dynamicEquationClosed : dynamicEquation

def GrowthModelClosed (A : AdmissibleClass) : Prop :=
  ∀ (m : SolowGrowthModel A), m.dynamicEquation

theorem growth_model_from_evidence (A : AdmissibleClass) (m : SolowGrowthModel A) : GrowthModelClosed A := by
  intro m';
  exact m'.dynamicEquationClosed

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
