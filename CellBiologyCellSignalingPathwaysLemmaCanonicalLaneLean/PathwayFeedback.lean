import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.TranscriptionActivation

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure PathwayFeedbackPackage {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} {T : TranscriptionActivationPackage K} where
  positiveFeedback : Prop
  negativeFeedback : Prop
  homeostasisMaintained : Prop
  positiveFeedbackClosed : positiveFeedback
  negativeFeedbackClosed : negativeFeedback
  homeostasisMaintainedClosed : homeostasisMaintained

structure PathwayFeedbackEvidence {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} {T : TranscriptionActivationPackage K} (F : PathwayFeedbackPackage T) where
  positiveFeedbackClosed : F.positiveFeedback
  negativeFeedbackClosed : F.negativeFeedback
  homeostasisMaintainedClosed : F.homeostasisMaintained

def PathwayFeedbackClosed {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} {T : TranscriptionActivationPackage K} (F : PathwayFeedbackPackage T) : Prop :=
  F.positiveFeedback ∧ F.negativeFeedback ∧ F.homeostasisMaintained

theorem pathway_feedback_closed_from_evidence {R : ReceptorBindingPackage} {S : SignalTransductionPackage R} {K : KinaseCascadePackage S} {T : TranscriptionActivationPackage K} (F : PathwayFeedbackPackage T) (E : PathwayFeedbackEvidence F) :
    PathwayFeedbackClosed F := by
  exact And.intro E.positiveFeedbackClosed (And.intro E.negativeFeedbackClosed E.homeostasisMaintainedClosed)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse