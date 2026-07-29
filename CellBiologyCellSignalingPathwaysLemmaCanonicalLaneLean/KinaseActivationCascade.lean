import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure KinaseActivationPackage where
  kinase : Type u
  substrate : Type v
  phosphorylationState : Prop
  activationLoop : Prop
  cascadeAmplification : Prop

structure KinaseActivationEvidence (K : KinaseActivationPackage) where
  phosphorylationStateClosed : K.phosphorylationState
  activationLoopClosed : K.activationLoop
  cascadeAmplificationClosed : K.cascadeAmplification

def KinaseActivationClosed (K : KinaseActivationPackage) : Prop :=
  K.phosphorylationState ∧ K.activationLoop ∧ K.cascadeAmplification

theorem kinase_activation_closed_from_evidence (K : KinaseActivationPackage) (E : KinaseActivationEvidence K) : KinaseActivationClosed K := by
  exact And.intro E.phosphorylationStateClosed (And.intro E.activationLoopClosed E.cascadeAmplificationClosed)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse