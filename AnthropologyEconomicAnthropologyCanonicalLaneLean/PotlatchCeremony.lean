import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyEconomicAnthropologyCanonicalLaneLean

structure PotlatchCeremonyPackage where
  ostentatiousGiving : Prop
  statusCompetition : Prop
  redistribution : Prop
  socialAlliance : Prop

structure PotlatchCeremonyEvidence (P : PotlatchCeremonyPackage) where
  ostentatiousGivingClosed : P.ostentatiousGiving
  statusCompetitionClosed : P.statusCompetition
  redistributionClosed : P.redistribution
  socialAllianceClosed : P.socialAlliance

def PotlatchCeremonyClosed (P : PotlatchCeremonyPackage) : Prop :=
  P.ostentatiousGiving ∧ P.statusCompetition ∧ P.redistribution ∧ P.socialAlliance

theorem potlatch_ceremony_closed_from_evidence (P : PotlatchCeremonyPackage) (E : PotlatchCeremonyEvidence P) : PotlatchCeremonyClosed P := by
  exact And.intro E.ostentatiousGivingClosed (And.intro E.statusCompetitionClosed (And.intro E.redistributionClosed E.socialAllianceClosed))

end HautevilleHouse
end AnthropologyEconomicAnthropologyCanonicalLaneLean