import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.TheoremStatement
import HautevilleHouse.CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SignalingComponent where
  name : String
  active : Prop

structure CellSignalingState where
  components : List SignalingComponent
  signalTransduced : Prop

structure SignalingAdmittedObject where
  state : CellSignalingState
  cascadeComplete : Prop
  downstreamEffect : Prop
  pathwayModel : Type
  conclusion : Prop

structure SignalingEndgameState where
  object : SignalingAdmittedObject

def SignalingWitnessClosed (O : SignalingAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse