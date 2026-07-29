import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

def ConstrainedSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem canonical_signaling_endgame (A : AdmissibleClass) :
    ConstrainedSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse