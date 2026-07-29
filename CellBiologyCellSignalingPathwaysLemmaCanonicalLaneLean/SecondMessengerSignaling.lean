import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure SecondMessengerPackage where
  messengerType : Type u
  productionSignal : Prop
  intracellularConcentration : Prop
  targetActivation : Prop
  signalTermination : Prop

structure SecondMessengerEvidence (S : SecondMessengerPackage) where
  productionSignalClosed : S.productionSignal
  intracellularConcentrationClosed : S.intracellularConcentration
  targetActivationClosed : S.targetActivation
  signalTerminationClosed : S.signalTermination

def SecondMessengerClosed (S : SecondMessengerPackage) : Prop :=
  S.productionSignal ∧ S.intracellularConcentration ∧ S.targetActivation ∧ S.signalTermination

theorem second_messenger_closed_from_evidence
    (S : SecondMessengerPackage) (E : SecondMessengerEvidence S) :
    SecondMessengerClosed S := by
  exact And.intro E.productionSignalClosed
    (And.intro E.intracellularConcentrationClosed
      (And.intro E.targetActivationClosed E.signalTerminationClosed))

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse