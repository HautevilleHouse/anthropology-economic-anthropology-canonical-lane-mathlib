import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure AnthropologyAdmissibleObject where
  exchangeSystem : Type u
  equilibriumProperty : Prop
  bridgeCondition : exchangeSystem -> Prop
  gateCondition : exchangeSystem -> Prop

structure AdmissibleClass where
  object : AnthropologyAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (bridgeClosed A) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse