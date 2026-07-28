import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure GiftEconomy where
  giftItem : Type
  socialRelation : Type
  obligationCreated : Prop
  returnGiftExpected : Prop
  prestationCycle : Prop

structure GiftEconomyEvidence (G : GiftEconomy) where
  obligationCreatedClosed : G.obligationCreated
  returnGiftExpectedClosed : G.returnGiftExpected
  prestationCycleClosed : G.prestationCycle

def GiftEconomyClosed (G : GiftEconomy) : Prop :=
  G.obligationCreated ∧ G.returnGiftExpected ∧ G.prestationCycle

theorem gift_economy_closed_from_evidence (G : GiftEconomy) (ev : GiftEconomyEvidence G) : GiftEconomyClosed G :=
  And.intro ev.obligationCreatedClosed (And.intro ev.returnGiftExpectedClosed ev.prestationCycleClosed)

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
