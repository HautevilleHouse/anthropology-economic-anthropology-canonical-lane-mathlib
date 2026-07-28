import AnthropologyEconomicAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure GiftExchangePackage {S : SocietyType} where
  reciprocityNorm : Prop
  delayedReturn : Prop
  socialDebt : Prop
  ritualGift : Prop

structure GiftExchangeEvidence {S : SocietyType} (G : GiftExchangePackage S) where
  reciprocityNormClosed : G.reciprocityNorm
  delayedReturnClosed : G.delayedReturn
  socialDebtClosed : G.socialDebt
  ritualGiftClosed : G.ritualGift

def GiftExchangeClosed {S : SocietyType} (G : GiftExchangePackage S) : Prop :=
  G.reciprocityNorm ∧ G.delayedReturn ∧ G.socialDebt ∧ G.ritualGift

theorem gift_exchange_closed_from_evidence
    {S : SocietyType} (G : GiftExchangePackage S) (E : GiftExchangeEvidence G) :
    GiftExchangeClosed G := by
  exact And.intro E.reciprocityNormClosed
    (And.intro E.delayedReturnClosed
      (And.intro E.socialDebtClosed E.ritualGiftClosed))

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse