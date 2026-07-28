import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure SocialCapitalBridgePackage where
  bondingSocialCapital : Prop
  bridgingSocialCapital : Prop
  linkingSocialCapital : Prop
  networkDensity : Prop

structure SocialCapitalBridgeEvidence (S : SocialCapitalBridgePackage) where
  bondingSocialCapitalClosed : S.bondingSocialCapital
  bridgingSocialCapitalClosed : S.bridgingSocialCapital
  linkingSocialCapitalClosed : S.linkingSocialCapital
  networkDensityClosed : S.networkDensity

def SocialCapitalBridgeClosed (S : SocialCapitalBridgePackage) : Prop :=
  S.bondingSocialCapital ∧ S.bridgingSocialCapital ∧ S.linkingSocialCapital ∧ S.networkDensity

theorem social_capital_bridge_closed_from_evidence (S : SocialCapitalBridgePackage) (E : SocialCapitalBridgeEvidence S) : SocialCapitalBridgeClosed S := by
  exact And.intro E.bondingSocialCapitalClosed (And.intro E.bridgingSocialCapitalClosed (And.intro E.linkingSocialCapitalClosed E.networkDensityClosed))

end HautevilleHouse
end AnthropologyEconomicAnthropologyCanonicalLaneLean