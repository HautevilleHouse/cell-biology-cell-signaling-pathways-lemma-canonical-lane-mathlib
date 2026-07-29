import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : SignalingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SignalingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse