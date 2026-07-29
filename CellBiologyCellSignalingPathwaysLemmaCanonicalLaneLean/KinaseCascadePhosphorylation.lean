import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure KinaseCascadePackage where
  kinaseLayers : Nat
  phosphorylationEvents : Prop
  signalAmplification : Prop
  cascadeSpecificity : Prop
  feedbackRegulation : Prop

structure KinaseCascadeEvidence (K : KinaseCascadePackage) where
  phosphorylationEventsClosed : K.phosphorylationEvents
  signalAmplificationClosed : K.signalAmplification
  cascadeSpecificityClosed : K.cascadeSpecificity
  feedbackRegulationClosed : K.feedbackRegulation

def KinaseCascadeClosed (K : KinaseCascadePackage) : Prop :=
  K.phosphorylationEvents ∧ K.signalAmplification ∧ K.cascadeSpecificity ∧ K.feedbackRegulation

theorem kinase_cascade_closed_from_evidence
    (K : KinaseCascadePackage) (E : KinaseCascadeEvidence K) :
    KinaseCascadeClosed K := by
  exact And.intro E.phosphorylationEventsClosed
    (And.intro E.signalAmplificationClosed
      (And.intro E.cascadeSpecificityClosed E.feedbackRegulationClosed))

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse