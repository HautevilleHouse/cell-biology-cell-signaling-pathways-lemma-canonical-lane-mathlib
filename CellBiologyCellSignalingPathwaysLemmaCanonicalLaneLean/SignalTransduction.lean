import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.ReceptorBinding

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure SignalTransductionPackage {R : ReceptorBindingPackage} where
  adaptorProteins : Prop
  secondMessenger : Prop
  amplification : Prop
  adaptorProteinsClosed : adaptorProteins
  secondMessengerClosed : secondMessenger
  amplificationClosed : amplification

structure SignalTransductionEvidence {R : ReceptorBindingPackage} (S : SignalTransductionPackage R) where
  adaptorProteinsClosed : S.adaptorProteins
  secondMessengerClosed : S.secondMessenger
  amplificationClosed : S.amplification

def SignalTransductionClosed {R : ReceptorBindingPackage} (S : SignalTransductionPackage R) : Prop :=
  S.adaptorProteins ∧ S.secondMessenger ∧ S.amplification

theorem signal_transduction_closed_from_evidence {R : ReceptorBindingPackage} (S : SignalTransductionPackage R) (E : SignalTransductionEvidence S) :
    SignalTransductionClosed S := by
  exact And.intro E.adaptorProteinsClosed (And.intro E.secondMessengerClosed E.amplificationClosed)

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse