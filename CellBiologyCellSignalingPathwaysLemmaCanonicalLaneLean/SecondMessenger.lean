import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure SecondMessengerPackage where
  cyclicAMPSynthesis : Prop
  calciumIonFlux : Prop
  inositolTriphosphateProduction : Prop
  signalPropagation : Prop

structure SecondMessengerEvidence (S : SecondMessengerPackage) where
  cyclicAMPSynthesisClosed : S.cyclicAMPSynthesis
  calciumIonFluxClosed : S.calciumIonFlux
  inositolTriphosphateProductionClosed : S.inositolTriphosphateProduction
  signalPropagationClosed : S.signalPropagation

def SecondMessengerClosed (S : SecondMessengerPackage) : Prop :=
  S.cyclicAMPSynthesis ∧ S.calciumIonFlux ∧ S.inositolTriphosphateProduction ∧ S.signalPropagation

theorem second_messenger_closed_from_evidence
    (S : SecondMessengerPackage) (E : SecondMessengerEvidence S) :
    SecondMessengerClosed S := by
  exact And.intro E.cyclicAMPSynthesisClosed
    (And.intro E.calciumIonFluxClosed
      (And.intro E.inositolTriphosphateProductionClosed E.signalPropagationClosed))

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse