import AnthropologyEconomicAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure MarketEmbeddednessPackage {S : SocietyType} where
  socialNetwork : Prop
  trustMechanism : Prop
  priceFormationEmbedded : Prop
  institutionalConstraint : Prop

structure MarketEmbeddednessEvidence {S : SocietyType} (M : MarketEmbeddednessPackage S) where
  socialNetworkClosed : M.socialNetwork
  trustMechanismClosed : M.trustMechanism
  priceFormationEmbeddedClosed : M.priceFormationEmbedded
  institutionalConstraintClosed : M.institutionalConstraint

def MarketEmbeddednessClosed {S : SocietyType} (M : MarketEmbeddednessPackage S) : Prop :=
  M.socialNetwork ∧ M.trustMechanism ∧ M.priceFormationEmbedded ∧ M.institutionalConstraint

theorem market_embeddedness_closed_from_evidence
    {S : SocietyType} (M : MarketEmbeddednessPackage S) (E : MarketEmbeddednessEvidence M) :
    MarketEmbeddednessClosed M := by
  exact And.intro E.socialNetworkClosed
    (And.intro E.trustMechanismClosed
      (And.intro E.priceFormationEmbeddedClosed E.institutionalConstraintClosed))

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse