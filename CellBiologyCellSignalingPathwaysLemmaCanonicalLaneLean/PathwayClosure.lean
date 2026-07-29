import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.CellBiologyAdmissibleClass
import CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.ReceptorLigandPackage

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedCellSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_signaling_endgame (A : AdmissibleClass) : ConstrainedCellSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse