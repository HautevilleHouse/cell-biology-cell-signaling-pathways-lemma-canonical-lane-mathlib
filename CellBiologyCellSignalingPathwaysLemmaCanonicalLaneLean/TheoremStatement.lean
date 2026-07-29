import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure CellSignalingAdmittedObject where
  pathwayObject : Type
  signalTransduced : Prop
  conclusion : signalTransduced

def CellSignalingWitnessClosed (O : CellSignalingAdmittedObject) : Prop :=
  O.signalTransduced

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse