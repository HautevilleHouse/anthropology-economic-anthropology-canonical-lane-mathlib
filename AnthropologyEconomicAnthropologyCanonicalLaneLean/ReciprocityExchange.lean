import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure ReciprocityExchangePackage where
  giftTransfer : Type u
  delayedReturn : Prop
  socialEmbeddedness : Prop
  moralObligation : Prop
  redistributionMechanism : Prop

structure ReciprocityExchangeEvidence (R : ReciprocityExchangePackage) where
  delayedReturnClosed : R.delayedReturn
  socialEmbeddednessClosed : R.socialEmbeddedness
  moralObligationClosed : R.moralObligation
  redistributionMechanismClosed : R.redistributionMechanism

def ReciprocityExchangeClosed (R : ReciprocityExchangePackage) : Prop :=
  R.delayedReturn ∧ R.socialEmbeddedness ∧ R.moralObligation ∧ R.redistributionMechanism

theorem reciprocity_exchange_closed_from_evidence (R : ReciprocityExchangePackage) (E : ReciprocityExchangeEvidence R) :
    ReciprocityExchangeClosed R :=
  And.intro E.delayedReturnClosed
    (And.intro E.socialEmbeddednessClosed
      (And.intro E.moralObligationClosed E.redistributionMechanismClosed))

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse