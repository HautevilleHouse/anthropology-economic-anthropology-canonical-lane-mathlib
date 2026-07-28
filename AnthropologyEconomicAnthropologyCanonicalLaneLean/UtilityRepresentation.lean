import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyEconomicAnthropologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure UtilityFunction (A : AdmissibleClass) where
  u : A.object.commoditySet → ℝ
  representsPref : ∀ (agent : A.object.agentSet) (x y : A.object.commoditySet),
    A.object.preferenceRelation agent x y ↔ u x > u y
  representsPrefClosed : representsPref

def UtilityRepresentationClosed (A : AdmissibleClass) : Prop :=
  Nonempty (UtilityFunction A)

theorem utility_representation_from_evidence (A : AdmissibleClass) (u : UtilityFunction A) : UtilityRepresentationClosed A := by
  exact ⟨u⟩

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
