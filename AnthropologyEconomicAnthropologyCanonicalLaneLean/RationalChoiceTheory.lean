import AnthropologyEconomicAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure RationalChoiceTheoryPackage {S : SocietyType} where
  utilityMaximization : Prop
  preferenceConsistency : Prop
  culturalConstraint : Prop
  boundedRationality : Prop

structure RationalChoiceTheoryEvidence {S : SocietyType} (R : RationalChoiceTheoryPackage S) where
  utilityMaximizationClosed : R.utilityMaximization
  preferenceConsistencyClosed : R.preferenceConsistency
  culturalConstraintClosed : R.culturalConstraint
  boundedRationalityClosed : R.boundedRationality

def RationalChoiceTheoryClosed {S : SocietyType} (R : RationalChoiceTheoryPackage S) : Prop :=
  R.utilityMaximization ∧ R.preferenceConsistency ∧ R.culturalConstraint ∧ R.boundedRationality

theorem rational_choice_theory_closed_from_evidence
    {S : SocietyType} (R : RationalChoiceTheoryPackage S) (E : RationalChoiceTheoryEvidence R) :
    RationalChoiceTheoryClosed R := by
  exact And.intro E.utilityMaximizationClosed
    (And.intro E.preferenceConsistencyClosed
      (And.intro E.culturalConstraintClosed E.boundedRationalityClosed))

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse