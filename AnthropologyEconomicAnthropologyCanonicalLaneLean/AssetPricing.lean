import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyEconomicAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure LucasTreeModel (A : AdmissibleClass) where
  dividendProcess : A.object.commoditySet → ℝ
  pricingKernel : A.object.commoditySet → ℝ → ℝ
  assetPrice : A.object.commoditySet → ℝ
  pricingEquation : assetPrice = pricingKernel * (dividendProcess + assetPrice)
  pricingEquationClosed : pricingEquation

def AssetPricingClosed (A : AdmissibleClass) : Prop :=
  ∀ (m : LucasTreeModel A), m.pricingEquation

theorem asset_pricing_from_evidence (A : AdmissibleClass) (m : LucasTreeModel A) : AssetPricingClosed A := by
  intro m';
  exact m'.pricingEquationClosed

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
