import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure CellSignalingSpace where
  cellType : Type
  membraneReceptors : Type
  intracellularMolecules : Type
  nucleus : Type

structure CellSignalingAdmittedObject where
  space : CellSignalingSpace
  ligandBound : Prop
  receptorActivated : Prop
  signalCascadeInitiated : Prop
  targetReached : Prop
  conclusion : targetReached

def CellSignalingWitnessClosed (O : CellSignalingAdmittedObject) : Prop :=
  O.targetReached

end HautevilleHouse
end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean