import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure ReciprocityPackage where
  generalizedReciprocity : Prop
  balancedReciprocity : Prop
  negativeReciprocity : Prop
  socialDistanceContext : Prop

structure ReciprocityEvidence (R : ReciprocityPackage) where
  generalizedReciprocityClosed : R.generalizedReciprocity
  balancedReciprocityClosed : R.balancedReciprocity
  negativeReciprocityClosed : R.negativeReciprocity
  socialDistanceContextClosed : R.socialDistanceContext

def ReciprocityClosed (R : ReciprocityPackage) : Prop :=
  R.generalizedReciprocity ∧ R.balancedReciprocity ∧ R.negativeReciprocity ∧ R.socialDistanceContext

theorem reciprocity_closed_from_evidence (R : ReciprocityPackage) (E : ReciprocityEvidence R) : ReciprocityClosed R := by
  exact And.intro E.generalizedReciprocityClosed (And.intro E.balancedReciprocityClosed (And.intro E.negativeReciprocityClosed E.socialDistanceContextClosed))

end HautevilleHouse
end AnthropologyEconomicAnthropologyCanonicalLaneLean