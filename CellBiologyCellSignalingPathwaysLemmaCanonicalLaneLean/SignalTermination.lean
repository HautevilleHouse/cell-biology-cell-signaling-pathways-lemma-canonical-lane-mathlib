import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure SignalTerminationPackage where
  phosphataseAction : Prop
  receptorInternalization : Prop
  inhibitoryFeedback : Prop
  signalAttenuation : Prop

structure SignalTerminationEvidence (T : SignalTerminationPackage) where
  phosphataseActionClosed : T.phosphataseAction
  receptorInternalizationClosed : T.receptorInternalization
  inhibitoryFeedbackClosed : T.inhibitoryFeedback
  signalAttenuationClosed : T.signalAttenuation

def SignalTerminationClosed (T : SignalTerminationPackage) : Prop :=
  T.phosphataseAction ∧ T.receptorInternalization ∧ T.inhibitoryFeedback ∧ T.signalAttenuation

theorem signal_termination_closed_from_evidence (T : SignalTerminationPackage) (E : SignalTerminationEvidence T) : SignalTerminationClosed T := by
  exact And.intro E.phosphataseActionClosed (And.intro E.receptorInternalizationClosed (And.intro E.inhibitoryFeedbackClosed E.signalAttenuationClosed))

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse