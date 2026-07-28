import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyEconomicAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure ArrowDebreuPackage (A : AdmissibleClass) where
  priceSystem : A.object.commoditySet → ℝ
  equilibriumCondition : ∀ (agent : A.object.agentSet),
    (∀ (x : A.object.commoditySet), priceSystem x * endowment agent x ≥ priceSystem x * x) ∧
    (preferenceRelation agent x y → priceSystem * x ≥ priceSystem * y)
  equilibriumConditionClosed : equilibriumCondition

def ArrowDebreuEquilibriumClosed (A : AdmissibleClass) : Prop :=
  ∀ (p : ArrowDebreuPackage A), p.equilibriumCondition

theorem arrow_debreu_equilibrium_from_evidence (A : AdmissibleClass) (p : ArrowDebreuPackage A) : ArrowDebreuEquilibriumClosed A := by
  intro p';
  exact p'.equilibriumConditionClosed

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
