import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.CanonicalPathways

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure EndpointClassificationPackage (C : CanonicalPathwaysPackage) where
  targetCellState : Type u
  cellStateTopology : TopologicalSpace targetCellState
  downstreamEffectorActivation : Prop
  phenotypicResponse : Prop
  endpointMatchesPhysiology : Prop

structure EndpointClassificationEvidence {C : CanonicalPathwaysPackage} (Epkg : EndpointClassificationPackage C) where
  downstreamEffectorActivationClosed : Epkg.downstreamEffectorActivation
  phenotypicResponseClosed : Epkg.phenotypicResponse
  endpointMatchesPhysiologyClosed : Epkg.endpointMatchesPhysiology

def EndpointClassificationClosed {C : CanonicalPathwaysPackage} (Epkg : EndpointClassificationPackage C) : Prop :=
  Epkg.downstreamEffectorActivation ∧ Epkg.phenotypicResponse ∧ Epkg.endpointMatchesPhysiology

theorem endpoint_classification_closed_from_evidence
    {C : CanonicalPathwaysPackage} (Epkg : EndpointClassificationPackage C)
    (E : EndpointClassificationEvidence Epkg) : EndpointClassificationClosed Epkg := by
  exact And.intro E.downstreamEffectorActivationClosed
    (And.intro E.phenotypicResponseClosed E.endpointMatchesPhysiologyClosed)

theorem endpoint_classification_supplies_statement
    {C : CanonicalPathwaysPackage} (Epkg : EndpointClassificationPackage C) :
    Epkg.endpointMatchesPhysiology :=
  Epkg.endpointMatchesPhysiology

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse
