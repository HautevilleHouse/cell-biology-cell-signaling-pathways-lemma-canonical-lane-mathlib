import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure PathwayCrossTalkPackage where
  pathwayA : Type u
  pathwayB : Type v
  interactionMolecules : Type w
  pathwayModulation : Prop
  signalIntegration : Prop

structure PathwayCrossTalkEvidence (P : PathwayCrossTalkPackage) where
  interactionMoleculesClosed : P.interactionMolecules
  pathwayModulationClosed : P.pathwayModulation
  signalIntegrationClosed : P.signalIntegration

def PathwayCrossTalkClosed (P : PathwayCrossTalkPackage) : Prop :=
  P.interactionMolecules ∧ P.pathwayModulation ∧ P.signalIntegration

theorem pathway_cross_talk_closed_from_evidence
    (P : PathwayCrossTalkPackage) (E : PathwayCrossTalkEvidence P) :
    PathwayCrossTalkClosed P := by
  exact And.intro E.interactionMoleculesClosed
    (And.intro E.pathwayModulationClosed E.signalIntegrationClosed)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse