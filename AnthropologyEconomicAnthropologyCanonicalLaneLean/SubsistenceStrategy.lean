import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure SubsistenceStrategy where
  strategyType : String
  resourceBase : Type
  seasonalCycle : Prop
  surplusGeneration : Prop
  riskManagement : Prop

structure SubsistenceStrategyEvidence (S : SubsistenceStrategy) where
  seasonalCycleClosed : S.seasonalCycle
  surplusGenerationClosed : S.surplusGeneration
  riskManagementClosed : S.riskManagement

def SubsistenceStrategyClosed (S : SubsistenceStrategy) : Prop :=
  S.seasonalCycle ∧ S.surplusGeneration ∧ S.riskManagement

theorem subsistence_strategy_closed_from_evidence (S : SubsistenceStrategy) (ev : SubsistenceStrategyEvidence S) : SubsistenceStrategyClosed S :=
  And.intro ev.seasonalCycleClosed (And.intro ev.surplusGenerationClosed ev.riskManagementClosed)

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
