import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.CellSignalingBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass CellSignalingAdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass CellSignalingAdmittedObject) :
    gateClosed A := by
  exact A.gateWitness

end HautevilleHouse
end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean