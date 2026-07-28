import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure UtilityMaximization where
  preferenceRelation : Type
  budgetConstraint : Type
  utilityFunction : Type
  maximizationAchieved : Prop
  convexPreferences : Prop

structure UtilityMaximizationEvidence (U : UtilityMaximization) where
  maximizationAchievedClosed : U.maximizationAchieved
  convexPreferencesClosed : U.convexPreferences

def UtilityMaximizationClosed (U : UtilityMaximization) : Prop :=
  U.maximizationAchieved ∧ U.convexPreferences

theorem utility_maximization_closed_from_evidence (U : UtilityMaximization) (ev : UtilityMaximizationEvidence U) : UtilityMaximizationClosed U :=
  And.intro ev.maximizationAchievedClosed ev.convexPreferencesClosed

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
