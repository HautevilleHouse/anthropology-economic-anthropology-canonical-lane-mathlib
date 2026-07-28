import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure Reciprocity where
  reciprocityType : String
  immediacy : Prop
  equivalenceExpected : Prop
  socialEmbeddedness : Prop
  delayedReturn : Prop

structure ReciprocityEvidence (R : Reciprocity) where
  immediacyClosed : R.immediacy
  equivalenceExpectedClosed : R.equivalenceExpected
  socialEmbeddednessClosed : R.socialEmbeddedness
  delayedReturnClosed : R.delayedReturn

def ReciprocityClosed (R : Reciprocity) : Prop :=
  R.immediacy ∧ R.equivalenceExpected ∧ R.socialEmbeddedness ∧ R.delayedReturn

theorem reciprocity_closed_from_evidence (R : Reciprocity) (ev : ReciprocityEvidence R) : ReciprocityClosed R :=
  And.intro ev.immediacyClosed (And.intro ev.equivalenceExpectedClosed (And.intro ev.socialEmbeddednessClosed ev.delayedReturnClosed))

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
