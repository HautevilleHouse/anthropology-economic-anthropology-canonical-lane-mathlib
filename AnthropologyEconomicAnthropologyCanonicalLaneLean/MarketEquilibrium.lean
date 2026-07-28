import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure MarketEquilibrium where
  supplySet : Type
  demandSet : Type
  priceMechanism : Type
  equilibriumExists : Prop
  stability : Prop

structure MarketEquilibriumEvidence (M : MarketEquilibrium) where
  equilibriumExistsClosed : M.equilibriumExists
  stabilityClosed : M.stability

def MarketEquilibriumClosed (M : MarketEquilibrium) : Prop :=
  M.equilibriumExists ∧ M.stability

theorem market_equilibrium_closed_from_evidence (M : MarketEquilibrium) (ev : MarketEquilibriumEvidence M) : MarketEquilibriumClosed M :=
  And.intro ev.equilibriumExistsClosed ev.stabilityClosed

end AnthropologyEconomicAnthropologyCanonicalLaneLean
end HautevilleHouse
