import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure KinaseCascadePackage where
  kinaseA : Type u
  kinaseB : Type v
  kinaseC : Type w
  phosphorylationSequence : Prop
  signalAmplification : Prop
  feedbackLoops : Prop

structure KinaseCascadeEvidence (K : KinaseCascadePackage) where
  phosphorylationSequenceClosed : K.phosphorylationSequence
  signalAmplificationClosed : K.signalAmplification
  feedbackLoopsClosed : K.feedbackLoops

def KinaseCascadeClosed (K : KinaseCascadePackage) : Prop :=
  K.phosphorylationSequence ∧ K.signalAmplification ∧ K.feedbackLoops

theorem kinase_cascade_closed_from_evidence
    (K : KinaseCascadePackage) (E : KinaseCascadeEvidence K) :
    KinaseCascadeClosed K := by
  exact And.intro E.phosphorylationSequenceClosed (And.intro E.signalAmplificationClosed E.feedbackLoopsClosed)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse