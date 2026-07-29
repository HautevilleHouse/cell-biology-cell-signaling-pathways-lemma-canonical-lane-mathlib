import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SignalingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse