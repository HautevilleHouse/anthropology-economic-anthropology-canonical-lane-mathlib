import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure ExchangeSystem where
  transferMechanism : Type
  valuation : Type
  reciprocityType : Prop
  equivalenceEstablished : Prop
  temporalFlow : Prop

structure ExchangeSystemEvidence (E : ExchangeSystem) where
  reciprocityTypeClosed : E.reciprocityType
  equivalenceEstablishedClosed : E.equivalenceEstablished
  temporalFlowClosed : E.temporalFlow

def ExchangeSystemClosed (E : ExchangeSystem) : Prop :=
  E.reciprocityType ∧ E.equivalenceEstablished ∧ E.temporalFlow

theorem exchange_system_closed_from_evidence (E : ExchangeSystem) (ev : ExchangeSystemEvidence E) : ExchangeSystemClosed E :=
  And.intro ev.reciprocityTypeClosed (And.intro ev.equivalenceEstablishedClosed ev.temporalFlowClosed)

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
