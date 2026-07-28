import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure MarketEmbeddednessPackage where
  embeddednessDegree : Prop
  formalInstitutions : Prop
  informalNorms : Prop
  disembeddedMarket : Prop

structure MarketEmbeddednessEvidence (M : MarketEmbeddednessPackage) where
  embeddednessDegreeClosed : M.embeddednessDegree
  formalInstitutionsClosed : M.formalInstitutions
  informalNormsClosed : M.informalNorms
  disembeddedMarketClosed : M.disembeddedMarket

def MarketEmbeddednessClosed (M : MarketEmbeddednessPackage) : Prop :=
  M.embeddednessDegree ∧ M.formalInstitutions ∧ M.informalNorms ∧ M.disembeddedMarket

theorem market_embeddedness_closed_from_evidence (M : MarketEmbeddednessPackage) (E : MarketEmbeddednessEvidence M) : MarketEmbeddednessClosed M := by
  exact And.intro E.embeddednessDegreeClosed (And.intro E.formalInstitutionsClosed (And.intro E.informalNormsClosed E.disembeddedMarketClosed))

end HautevilleHouse
end AnthropologyEconomicAnthropologyCanonicalLaneLean