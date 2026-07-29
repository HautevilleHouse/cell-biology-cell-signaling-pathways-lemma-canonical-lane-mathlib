import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.CellSignalingObjects
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass CellSignalingAdmittedObject) : Prop :=
  CellSignalingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass CellSignalingAdmittedObject) :
    bridgeClosed A := by
  exact A.object.conclusion

end HautevilleHouse
end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean