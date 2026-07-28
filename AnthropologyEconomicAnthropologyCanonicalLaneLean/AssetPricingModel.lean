import AnthropologyEconomicAnthropologyCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure AssetPricingModel (U : UtilityTheoryPackage) (E : ArrowDebreuEconomy U) where
  stateSpace : Type u
  assetPayoffs : Type v
  discountFactor : ℝ
  fundamentalTheorem : Prop
  riskNeutralValuation : Prop

struct AssetPricingEvidence (U : UtilityTheoryPackage) (E : ArrowDebreuEconomy U) (A : AssetPricingModel U E) where
  fundamentalTheoremClosed : A.fundamentalTheorem
  riskNeutralValuationClosed : A.riskNeutralValuation

def AssetPricingClosed (U : UtilityTheoryPackage) (E : ArrowDebreuEconomy U) (A : AssetPricingModel U E) : Prop :=
  A.fundamentalTheorem ∧ A.riskNeutralValuation

theorem asset_pricing_closed_from_evidence (U : UtilityTheoryPackage) (E : ArrowDebreuEconomy U) (A : AssetPricingModel U E) (Ev : AssetPricingEvidence U E A) :
    AssetPricingClosed U E A := by
  exact And.intro Ev.fundamentalTheoremClosed Ev.riskNeutralValuationClosed

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
