import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure CellSignalingAdmittedObject where
  cellType : Type
  receptor : Type
  ligand : Type
  bindingAffinity : Prop
  downstreamEffect : Prop
  conclusion : bindingAffinity ∧ downstreamEffect

structure AdmissibleClass where
  object : CellSignalingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse