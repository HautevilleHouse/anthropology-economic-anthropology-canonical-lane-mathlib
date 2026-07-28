import BridgeLemmas

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

def ConstrainedAnthropologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_anthropology_endgame (A : AdmissibleClass) :
    ConstrainedAnthropologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse