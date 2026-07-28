import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure GiftExchangeCyclePackage where
  obligationToGive : Prop
  obligationToReceive : Prop
  obligationToRepay : Prop
  cycleContinuity : Prop

structure GiftExchangeCycleEvidence (G : GiftExchangeCyclePackage) where
  obligationToGiveClosed : G.obligationToGive
  obligationToReceiveClosed : G.obligationToReceive
  obligationToRepayClosed : G.obligationToRepay
  cycleContinuityClosed : G.cycleContinuity

def GiftExchangeCycleClosed (G : GiftExchangeCyclePackage) : Prop :=
  G.obligationToGive ∧ G.obligationToReceive ∧ G.obligationToRepay ∧ G.cycleContinuity

theorem gift_exchange_cycle_closed_from_evidence (G : GiftExchangeCyclePackage) (E : GiftExchangeCycleEvidence G) : GiftExchangeCycleClosed G := by
  exact And.intro E.obligationToGiveClosed (And.intro E.obligationToReceiveClosed (And.intro E.obligationToRepayClosed E.cycleContinuityClosed))

end HautevilleHouse
end AnthropologyEconomicAnthropologyCanonicalLaneLean